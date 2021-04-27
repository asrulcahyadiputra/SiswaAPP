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
    @EnvironmentObject var userAuth : LoginController
    var  body: some View {
        NavigationView{
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
                    
                    Text(userAuth.name)
                        .foregroundColor(Color("dark-blue"))
                        .font(.system(size: 14, weight: .bold))
                    
                    Text(userAuth.nis)
                        .font(.system(size: 12))
                }
                .padding(.bottom,15)
                bodyAkun()
                Spacer()
                
            }
        }
        
    }
}

//MARK: -Body Akun View
struct bodyAkun: View {
    @State var touchidOn : Bool = false
    var body: some View{
        List{
            NavigationLink (destination: profileView()){
                HStack{
                    Image("fi-rr-user")
                        .frame(width: 20, height: 20)
                        .padding(.trailing,20)
                    Text("Data Pribadi")
                        .font(.system(size: 12))
                    Spacer()
                    Image("fi-rr-angle-small-right")
                    
                }
            }
            
            
            NavigationLink(destination: akademikView()){
                HStack{
                    Image("fi-rr-graduation-cap")
                        .frame(width: 20, height: 20)
                        .padding(.trailing,20)
                    Text("Data Akademik")
                        .font(.system(size: 12))
                    Spacer()
                    Image("fi-rr-angle-small-right")
                    
                }
                
            }
            
            
            HStack{
                Image("fi-rr-key")
                    .frame(width: 20, height: 20)
                    .padding(.trailing,20)
                Text("Username dan Password")
                    .font(.system(size: 12))
                Spacer()
                Image("fi-rr-angle-small-right")
                
            }
            
            HStack{
                Image("fi-rr-fingerprint")
                    .frame(width: 20, height: 20)
                    .padding(.trailing,20)
                Text("Masuk dengan sidik jari")
                    .font(.system(size: 12))
                Spacer()
                Toggle(isOn: $touchidOn, label: {
                    Text("")
                })
                
            }
            
        }
        
        Spacer()
        VStack{
            Button(action: {}){
                Text("Keluar")
                    .foregroundColor(.red)
            }
            .padding(.bottom,30)
            
        }
    }
}

struct AkunView_Previews: PreviewProvider {
    static var previews: some View {
        AkunView()
    }
}


