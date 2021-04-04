//
//  MapelController.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 04/04/21.
//

import Foundation
import SwiftUI
import Combine


class MapelController: ObservableObject{
    
    @Published var mapels : [Mapels] = []
    
    func loadMapel( kode: String,token: String) {
      
            ApiService.shareInstance.callingMapelApi(token: token, kodeKelas: kode) { (response) in
                switch response {
                case .success(let data):
                    let results = (data as! Results).success
                    
                    self.mapels = [results]
                    
//                    print(results)
                  
                   
                case .failure(let err):
                    print("Error")
                    print(err.localizedDescription)
                }
                
            }
    }
}
