//
//  LoginModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import Foundation

struct LoginModel:Codable, Identifiable {
    var id = UUID()
    let token : String
    let tokenType: String
    let message: String
    let expiresIn: Int
}
