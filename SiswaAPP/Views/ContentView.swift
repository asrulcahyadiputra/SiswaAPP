//
//  ContentView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authUser : AuthModel
    
    func logout(){
        authUser.isLogin = false
    }
    var body: some View {
        if(!authUser.isLogin){
            LoginView()
        }else{
            Text("Hello, world!")
                .padding()
            
            VStack{
                HStack {
                    Spacer()
                    Button( action: {
                        //action button here
                        self.logout()
                    }){
                        Text("Logout").bold().font(.callout).foregroundColor(.white)
                    }
                    Spacer()
                }
                .padding()
                .background(Color.purple)
                .cornerRadius(15.0)
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
