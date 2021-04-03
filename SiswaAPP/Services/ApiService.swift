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
    
    func callingLoginApi(login: LoginInputModel) {
        AF.request(login_url, method: .post, parameters: login , encoder: JSONParameterEncoder.default).response{
            response in
            debugPrint(response)
            switch response.result {
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                }catch {
                    
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
        
    }
}
