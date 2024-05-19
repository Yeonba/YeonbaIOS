import UIKit
import SnapKit
import Then

// 채팅 수락 알림 셀 (Chat Acceptance Cell)
class ChatAcceptanceCell: ArrowNotificationCell {
    //MARK: - UI Layout
    override func configUI() {
        super.configUI() // 부모 클래스의 configUI를 호출하여 기본 레이아웃을 설정합니다.
        
        messageLabel.text = "선재님이 채팅을 수락했어요!"
        actionButton.setTitle("채팅하러 가기", for: .normal)
        actionButton.addTarget(self, action: #selector(chatBtnTapped), for: .touchUpInside)
    }
    //MARK: - Actions
    @objc func chatBtnTapped() {
        print("chatBtnTapped tapped")
    }
    override func configure(with notification: Notifications) {
        messageLabel.text = notification.content
        timeLabel.text = "\(notification.createdAt.timeAgoSinceDate())"
        print("알림내용:\(notification.content)")
        if let url = URL(string: Config.s3URLPrefix + notification.senderProfilePhotoUrl) {
            profileImageView.kf.setImage(with: url)
        }
    }
}
