//
//  BlurView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 04/04/21.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialLight))
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

