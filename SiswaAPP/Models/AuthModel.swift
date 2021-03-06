//
//  AuthModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import Foundation
import Combine
import SwiftUI
import Alamofire

class AuthModel: ObservableObject {
    //didChange
    var didChange = PassthroughSubject<AuthModel, Never>()
    
    @Published var isLogin : Bool = false {
        didSet {
            didChange.send(self)
        }
    }
    
    @Published var isCorrect : Bool = true
    
    @Published var userToken : String = ""
    
    func cekLogin(username:String, password: String) {
        let Login = LoginInputModel(nik: username, password: password)
         
         ApiService.shareInstance.callingLoginApi(login: Login)
    }
        
}
