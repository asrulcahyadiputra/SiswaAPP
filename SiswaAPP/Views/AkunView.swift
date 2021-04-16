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
            .padding(.bottom,15)
            bodyAkun()
            Spacer()
            
        }
    }
}

//MARK: -Body Akun View
struct bodyAkun: View {
    var body: some View{
        List{
            HStack{
                Image("fi-rr-user")
                    .frame(width: 20, height: 20)
                    .padding(.trailing,20)
                Text("Data Pribadi")
                Spacer()
                Image("fi-rr-angle-small-right")
                
            }
            HStack{
                Image("fi-rr-graduation-cap")
                    .frame(width: 20, height: 20)
                    .padding(.trailing,20)
                Text("Data Pribadi")
                Spacer()
                Image("fi-rr-angle-small-right")
                
            }
            HStack{
                Image("fi-rr-key")
                    .frame(width: 20, height: 20)
                    .padding(.trailing,20)
                Text("Data Pribadi")
                Spacer()
                Image("fi-rr-angle-small-right")
                
            }
            HStack{
                Image("fi-rr-fingerprint")
                    .frame(width: 20, height: 20)
                    .padding(.trailing,20)
                Text("Data Pribadi")
                Spacer()
                Image("fi-rr-angle-small-right")
                
            }
           
        }
        
        Spacer()
        VStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                Text("Keluar")
                    .foregroundColor(.red)
            }
            
        }
    }
}

struct AkunView_Previews: PreviewProvider {
    static var previews: some View {
        AkunView()
    }
}


