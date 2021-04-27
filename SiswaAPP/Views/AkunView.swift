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
    @State var touchidOn : Bool = false
    @EnvironmentObject var userAuth : LoginController
    var  body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("Profil")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        Image("user")
                            .resizable()
                            .frame(width: 76, height: 76)
                        
                        Text(userAuth.name)
                            .foregroundColor(Color("dark-blue"))
                            .font(.system(size: 14, weight: .bold))
                        
                        Text(userAuth.nis)
                            .font(.system(size: 12))
                    
                }
                .padding(.top,30)
                Spacer()
              
                List{
                    NavigationLink (destination: profileView()){
                        HStack{
                            Image("fi-rr-user")
                                .frame(width: 20, height: 20)
                                .padding(.trailing,20)
                            Text("Data Pribadi")
                                .font(.system(size: 12))
                            
                        }
                    }
                    
                    
                    NavigationLink(destination: akademikView()){
                        HStack{
                            Image("fi-rr-graduation-cap")
                                .frame(width: 20, height: 20)
                                .padding(.trailing,20)
                            Text("Data Akademik")
                                .font(.system(size: 12))
                            
                        }
                        
                    }
                    
                    NavigationLink(destination: akunSettingView()){
                        HStack{
                            Image("fi-rr-key")
                                .frame(width: 20, height: 20)
                                .padding(.trailing,20)
                            Text("Username dan Password")
                                .font(.system(size: 12))
                        }

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
        
    }
}




