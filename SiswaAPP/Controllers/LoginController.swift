//
//  LoginController.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation
import Combine
import SwiftUI

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
         
        ApiService.shareInstance.callingLoginApi(login: Login) { (result) in
            switch result {
            case .success(let json):
                let token = (json as! ResponseLogin).token
                let message = (json as! ResponseLogin).message
                
                if(message == "success"){
                    self.isLogin = true
                    self.userToken = token
                }else{
                    self.isCorrect = false
                    self.isLogin = false
                    self.userToken = ""
                }
                
            case .failure(let err):
                self.isCorrect = false
                self.isLogin = false
                self.userToken = ""
                print(err.localizedDescription)
            }
        }
    }
        
}
