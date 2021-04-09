//
//  LoginView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Login()
    }
}

struct Login : View {
    
    @EnvironmentObject var userAuth : LoginController
    
    @State var username: String = ""
    @State var password: String = ""
    @State var showAlert : Bool = false
    @State var checkState  : Bool = false
    let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    //form validation
    @State var isEmptyField :Bool = false
    
    var body: some View {
        VStack {
            
            //MARK: -Header
            HStack {
                VStack(alignment: .leading, spacing:15){
                    Text("Hai")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Selamat Pagi!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
                Spacer()
            }
            .padding(.leading,70)
            .padding(.top,100)
            .padding(.bottom,-90)
            Image("Hand")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom,-30)
                .padding(.leading,150)
            
            // MARK: -Content
            ZStack{
                
                VStack(spacing: 15) {
                    
                    Text("Masuk")
                        .foregroundColor(.black)
                        .fontWeight(.heavy)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    // MARK: - Form
                    VStack(alignment: .leading, spacing: 15){
                        Text("username")
                        TextField("",text:$username)
                            .padding()
                            .background(Color.white)
                            .border(Color("border-color"))
                            .cornerRadius(10.0)
                            .autocapitalization(.none)
                        
                        Text("Password")
                        SecureField("",text:$password)
                            .padding()
                            .background(Color.white)
                            .border(Color("border-color"))
                            .cornerRadius(10.0)
                            .autocapitalization(.none)
                        
                        HStack {
                            Rectangle()
                                .fill(self.checkState ? Color.green : Color.white)
                                .border(Color("border-color"))
                                .frame(width:20, height:20, alignment: .center)
                                .cornerRadius(5)
                            
                            Text("Tetap Masuk ")
                                .font(.system(size:12))
                            Spacer()
                            Button(action:{}){
                                Text("Lupa Password")
                                    .foregroundColor(.black)
                                    .font(.system(size: 12))
                            }
                        }.padding([.top,.bottom],10)
                        
                        HStack {
                            Spacer()
                            Button( action: {
                                //action button here
                                if(self.username.isEmpty || self.password.isEmpty){
                                    self.isEmptyField = true
                                }else{
                                    self.userAuth.cekLogin(username: self.username, password: self.password)
                                }
                            }){
                                Text("Login").bold().font(.callout).foregroundColor(.white)
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Login Gagal!"),
                                    message: Text("Username atau Password Tidak Sesuai")
                                )
                            }
                            Spacer()
                        }
                        .padding()
                        .background(Color("dark-blue"))
                        .cornerRadius(15.0)
                        
                    }
                    
                    //MARK: -Biometric Login
                    
                    VStack(alignment: .center, spacing: 15){
                        Text("atau Masuk Menggunakan")
                            .font(.system(size: 14))
                        
                        HStack{
                            Button(action: {}){
                                Image(systemName: "touchid")
                                    .foregroundColor(.black)
                                    .frame(width: 50, height: 50)
                                    .background(Color.white)
                                    .border(Color("border-color"))
                                    .cornerRadius(50)
                            }
                            
                            Button(action: {}){
                                Image(systemName: "faceid")
                                    .foregroundColor(.black)
                                    .frame(width: 50, height: 50)
                                    .background(Color.white)
                                    .border(Color("border-color"))
                                    .cornerRadius(50)
                            }
                           
                        }
                    }
                    .padding(.top,30)
                    Spacer()
                    VStack(spacing:15){
                       Text("Version 2.0")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        
                        HStack{
                            Image("logo")
                            Text("Yayasan Taruna Bakti")
                                .font(.system(size: 12))
                        }
                       
                    }
                    .padding()
                    .padding(.top,30)
                }
                .padding(30)
                Spacer()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .clipShape(CustomCorner(corners: [.topLeft,.topRight]))
            
        }
        .background(Color("dark-blue"))
        .ignoresSafeArea(.all, edges: .all)
        Spacer()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
