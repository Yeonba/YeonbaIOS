//
//  MyPageService.swift
//  YeonBa
//
//  Created by 김민솔 on 5/23/24.
//

import Foundation
import Alamofire


protocol MyPageServiceProtocol {
    func myProfile(completion: @escaping (NetworkResult<StatusResponse<ProfileResponse>>) -> Void)
    func editProfile(bodyDTO: ProfileEditRequest, completion: @escaping (NetworkResult<StatusResponse<String?>>) -> Void)
    func profileDetail(completion: @escaping (NetworkResult<StatusResponse<ProfileDetailResponse>>) -> Void)
}

final class MyPageService: APIRequestLoader<MyPageTarget>, MyPageServiceProtocol {
    func profileDetail(completion: @escaping (NetworkResult<StatusResponse<ProfileDetailResponse>>) -> Void) {
        fetchData(target: .profileDetail , responseData: StatusResponse<ProfileDetailResponse>.self, completion: completion)
    }
    
    func editProfile(bodyDTO: ProfileEditRequest, completion: @escaping (NetworkResult<StatusResponse<String?>>) -> Void) {
        fetchData(target: .editProfile(bodyDTO), responseData: StatusResponse<String?>.self, completion: completion)
    }
    
    func myProfile(completion: @escaping (NetworkResult<StatusResponse<ProfileResponse>>) -> Void) {
        fetchData(target: .myprofile, responseData: StatusResponse<ProfileResponse>.self, completion: completion)
    }
}
