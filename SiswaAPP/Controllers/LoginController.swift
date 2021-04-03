//
//  LoginController.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation
import Combine
import SwiftUI
import Alamofire

class LoginController: ObservableObject {
    //didChange
    var didChange = PassthroughSubject<LoginController, Never>()
    
    @Published var isLogin : Bool = false {
        didSet {
            didChange.send(self)
        }
    }
    
    @Published var isCorrect : Bool = true
    
    @Published var userToken : String = ""
    
    func cekLogin(username:String, password: String) {
        let Login = LoginInputModel(nik: username, password: password)
         
        ApiService.shareInstance.callingLoginApi(login: Login) { (isSuccess, str) in
            if isSuccess {
                self.isLogin = true
            }else{
                self.isCorrect = false
                self.isLogin = false
            }
        }
    }
        
}
