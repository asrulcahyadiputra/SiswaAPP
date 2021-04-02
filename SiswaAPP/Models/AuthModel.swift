//
//  AuthModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import Foundation

class AuthModel: ObservableObject {
    @Published var isLogin : Bool = false
    @Published var isCorrect : Bool = true
}
