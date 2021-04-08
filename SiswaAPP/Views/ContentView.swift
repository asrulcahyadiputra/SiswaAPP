//
//  ContentView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import SwiftUI

struct ContentView: View {
    
    var row = Array(repeating: GridItem(.fixed(220), spacing: 20), count: 1)
    
    @EnvironmentObject var authUser : LoginController
    
    var body: some View {
        
        if(!authUser.isLogin){
            LoginView()
        }else{
            TabView{
                HomeView()
                    .tabItem{
                        Label("Pelajaran", systemImage: "book")
                    }
                Text("Pesan")
                    .tabItem{
                        Label("Pesan", systemImage: "message")
                    }
                Text("Akun")
                    .tabItem{
                        Label("Akun", systemImage: "person")
                    }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


