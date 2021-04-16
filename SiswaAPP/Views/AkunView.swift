//
//  AkunView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 16/04/21.
//

import SwiftUI

struct AkunView: View {
    var body: some View {
       AkunTop()
    }
}

//MARK: -Top Bar Akun
struct AkunTop: View {
    var  body: some View {
        VStack{
            VStack{
                Text("Profil")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.top,30)
            
            VStack(spacing: 15){
                Image("user")
                    .resizable()
                    .frame(width: 76, height: 76)
                
                Text("Nama Akun Here")
                    .foregroundColor(Color("dark-blue"))
                    .font(.system(size: 14, weight: .bold))
                
                Text("123456")
                    .font(.system(size: 12))
            }
          
            Spacer()
        }
    }
}

//MARK: -Body Akun View


struct AkunView_Previews: PreviewProvider {
    static var previews: some View {
        AkunView()
    }
}
