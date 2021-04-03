//
//  ApiService.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation
import Alamofire


class ApiService{
    
    static let shareInstance = ApiService()
    
    func callingLoginApi(login: LoginInputModel, completionHandler: @escaping (Bool, String) -> ()) {
        AF.request(login_url, method: .post, parameters: login , encoder: JSONParameterEncoder.default).response{
            response in
            debugPrint(response)
            switch response.result {
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                    if(response.response?.statusCode == 200){
                        completionHandler(true,"Login Successfully")
                    }else{
                        completionHandler(false,"Login Failed")
                    }
                    
                }catch {
                    print(error.localizedDescription)
                    completionHandler(false,"Something Went Wrong")
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
        
    }
}
