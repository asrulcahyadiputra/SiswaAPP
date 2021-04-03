//
//  LoginModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import Foundation

struct LoginModel {
    let token : String
    let tokenType: String
    let message: String
    let expiresIn: Int
}

// MARK: - Response Codeble
struct ResponseLogin: Codable {
    let token, tokenType, message: String
    let expiresIn: Int

    enum CodingKeys: String, CodingKey {
        case token
        case tokenType = "token_type"
        case message
        case expiresIn = "expires_in"
    }
}
