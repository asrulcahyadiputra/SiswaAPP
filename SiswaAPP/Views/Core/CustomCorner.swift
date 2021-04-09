//
//  CustomCorner.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 09/04/21.
//

import SwiftUI

struct CustomCorner: Shape {
    var corners : UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 30, height: 30))
        
        return Path(path.cgPath)
    }
}

