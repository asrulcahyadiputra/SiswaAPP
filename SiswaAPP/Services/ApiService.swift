//
//  ApiService.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation
import Alamofire


enum APIErrors: Error {
    case custom(message: String)
}

typealias Handler = (Swift.Result<Any?, APIErrors>) -> Void

class ApiService{
    
    static let shareInstance = ApiService()
    
    func callingLoginApi(login: LoginInputModel,completionHandler: @escaping Handler) {
        
        AF.request(login_url, method: .post, parameters: login , encoder: JSONParameterEncoder.default).response {
            response in
            switch response.result {
            case .success(let data):
                do{
                    
                    let json = try JSONDecoder().decode(ResponseLogin.self, from: data!)
                
                    if(response.response?.statusCode == 200){
                        completionHandler(.success(json))
                    }else{
                        completionHandler(.failure(.custom(message: "Please Check Your network connectivity")))
                    }
                    
                }catch {
                    completionHandler(.failure(.custom(message: "Please try again")))
                }
            case .failure(let err):
                print(err.localizedDescription)
                completionHandler(.failure(.custom(message: "Please try again")))
            }
        }
        
    }
    
    func callingProfileApi(token: String,completionHandler: @escaping Handler) {
        let headers: HTTPHeaders = [
            "Authorization": "Bearer " + token,
        ]
        
        AF.request(profile_url, method: .get, headers: headers ).response {
            response in
          
            switch response.result {
            case .success(let data):
                do{
                    
                    let json = try JSONDecoder().decode(Profile.self, from: data!)
                  
                    if(response.response?.statusCode == 200){
                        completionHandler(.success(json))
                    }else{
                      
                        completionHandler(.failure(.custom(message: "Please Check Your network connectivity")))
                    }
                    
                }catch {
                    completionHandler(.failure(.custom(message: "Please try again")))
                }
            case .failure(let err):
                print(err.localizedDescription)
                completionHandler(.failure(.custom(message: "Please try again")))
            }
        }
        
    }
    
    func callingMapelApi(token: String,kodeKelas: String,completionHandler: @escaping Handler) {
        let headers: HTTPHeaders = [
            "Authorization": "Bearer " + token,
        ]
        
     
            AF.request(profile_url + "?kode_kelas=" + kodeKelas , method: .get, headers: headers ).response {
                response in
                debugPrint(response)
                switch response.result {
                case .success(let data):
                    do{
                        
                        let json = try JSONDecoder().decode(Results.self, from: data!)
                      
                        if(response.response?.statusCode == 200){
                            completionHandler(.success(json))
                        }else{
                          
                            completionHandler(.failure(.custom(message: "Please Check Your network connectivity")))
                        }
                        
                    }catch {
                        completionHandler(.failure(.custom(message: "Please try again")))
                    }
                case .failure(let err):
                    print(err.localizedDescription)
                    completionHandler(.failure(.custom(message: "Please try again")))
                }
            }
     
        
        
        
    }
    
}
