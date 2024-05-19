//
//  KeychainHandler.swift
//  YeonBa
//
//  Created by 김민솔 on 5/3/24.
//

import Foundation
import SwiftKeychainWrapper

struct KeychainHandler {
    static var shared = KeychainHandler()
    
    private let keychain = KeychainWrapper(serviceName: "YeonBa", accessGroup: "YeonBa.iOS")
    private let accessTokenKey = "accessToken"
    private let refreshTokenKey = "refreshToken"
    private let kakaoUserIDKey = "kakaoUserID"
    private let providerTokenKey = "providerToken"
    private let authorizationCodeKey = "authorizationCode"
    private let userIDKey = "userID"
    private let userNameKey = "userName"
    
    var accessToken: String {
        get {
            return KeychainWrapper.standard.string(forKey: accessTokenKey) ?? ""
        }
        set {
            KeychainWrapper.standard.set(newValue, forKey: accessTokenKey)
        }
    }
    
    var refreshToken: String {
        get {
            return KeychainWrapper.standard.string(forKey: refreshTokenKey) ?? ""
        }
        set {
            KeychainWrapper.standard.set(newValue, forKey: refreshTokenKey)
        }
    }
    
    var kakaoUserID: String {
        get {
            return KeychainWrapper.standard.string(forKey: kakaoUserIDKey) ?? ""
        }
        set {
            KeychainWrapper.standard.set(newValue, forKey: kakaoUserIDKey)
        }
    }
    
    var providerToken: String {
        get {
            return KeychainWrapper.standard.string(forKey: providerTokenKey) ?? ""
        }
        set {
            KeychainWrapper.standard.set(newValue, forKey: providerTokenKey)
        }
    }
    
    var userID: String {
        get {
            return KeychainWrapper.standard.string(forKey: userIDKey) ?? ""
        }
        set {
            KeychainWrapper.standard.set(newValue, forKey: userIDKey)
        }
    }
    
    var userName: String {
        get {
            return KeychainWrapper.standard.string(forKey: userNameKey) ?? ""
        }
        set {
            KeychainWrapper.standard.set(newValue, forKey: userNameKey)
        }
    }

}

