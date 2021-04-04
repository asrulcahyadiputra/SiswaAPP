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
    
    @EnvironmentObject var authUser : LoginController
    
    @Published var mapels = 0..<10
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false){ [self] (_) in
            
        }
    }
}
