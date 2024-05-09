//
//  NetworkService.swift
//  YeonBa
//
//  Created by 김민솔 on 5/6/24.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private init() {}
    
    let signUpService : SignUpServiceProtocol = SignUpService( apiLogger: APIEventLogger())
}