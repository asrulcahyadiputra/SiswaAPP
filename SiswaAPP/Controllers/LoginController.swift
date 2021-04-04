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
    @Published var kodeKelas : String = ""
    @Published var name : String = ""
    
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
                    print(token)
                    ApiService.shareInstance.callingProfileApi(token: token) { (response) in
                        switch response {
                        case .success(let data):
                            let userProfile = (data as! Profile).user
                            let kodeKelas = userProfile[0].kodeKelas
                            let name = userProfile[0].nama
                            print(name)
                            print(kodeKelas)
                            self.kodeKelas = kodeKelas
                            self.name = name
                        case .failure(let err):
                            print("Error")
                            print(err.localizedDescription)
                        }
                        
                    }
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
