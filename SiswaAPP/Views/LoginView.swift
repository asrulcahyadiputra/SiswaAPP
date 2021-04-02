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
    
    @EnvironmentObject var userAuth : AuthModel
    
    @State var username: String = ""
    @State var password: String = ""
    @State var showAlert : Bool = false
    
    let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    func cekLogin() {
        if (username == "Admin" && password == "123"){
            userAuth.isLogin = true
        }else{
            userAuth.isLogin = false
            userAuth.isCorrect = false
            self.showAlert = true
        }
    }
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    HStack {
                        VStack {
                            Text("Hi!").font(.largeTitle).foregroundColor(Color.white)
                            Text("Welcome Back!").font(.title).foregroundColor(Color.white)
                        }
                        Spacer()
                        
                        Image("hero-login")
                            .resizable()
                            .frame(width: 120, height: 80)
                            .padding()
                    }
                    Spacer()
                }
                .frame(height:100)
                .padding(30)
                .background(Color.purple)
                .clipShape(CustomShape(corner: .bottomRight, radil: 50))
                .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .leading) {
                   
                   
                    
                    Text("username")
                    TextField("Useranme...", text:$username)
                        .padding()
                        .background(lightGrayColor)
                        .cornerRadius(5.0)
                    
                    Text("Password")
                    SecureField("Password...",text:$password)
                        .padding()
                        .background(lightGrayColor)
                        .cornerRadius(5.0)
                    
                    HStack {
                        Button(action:{}){
                            Text("Lupa Password?")
                        }
                    }.padding([.top,.bottom],10)
                    
                    HStack {
                        Spacer()
                        Button( action: {
                            //action button here
                            self.cekLogin()
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
                    .background(Color.purple)
                    .cornerRadius(15.0)
                }
                .padding(30.0)
                Spacer()
            }
        }
    }
}

//Cutom shape
struct CustomShape : Shape {
    var corner : UIRectCorner
    var radil : CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner ,cornerRadii: CGSize(width: radil, height: radil))
        
        return Path(path.cgPath)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
