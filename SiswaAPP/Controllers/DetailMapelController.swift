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
    @Published var detailMapels = [DetailMapels]()
    @Published var detailMapelResponse = [DetailMapelResponse]()

    func get(kodeMatpel:String) {
        ApiService.shareInstance.callingDetailMapelApi(kodeMatpel: kodeMatpel, kodeSemester: "All") { (response) in
            switch response {
            case .success(let data):
             
                let results = (data as! Results)
                
//                self.detailMapels = results
                
           
            case .failure(let err):
                print("Error")
                print(err.localizedDescription)
            }
            
        }
    }
}
