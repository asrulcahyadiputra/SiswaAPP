//
//  DetailMapelController.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 13/04/21.
//
import Foundation
import SwiftUI
import Combine


class DetailMapelController: ObservableObject{
    @Published var mapels = [Mapel]()
    
    init() {
        ApiService.shareInstance.callingMapelApi() { (response) in
            switch response {
            case .success(let data):
             
                let results = (data as! Results)
                
                self.mapels = results.success.data
                
           
            case .failure(let err):
                print("Error")
                print(err.localizedDescription)
            }
            
        }
    }
}
