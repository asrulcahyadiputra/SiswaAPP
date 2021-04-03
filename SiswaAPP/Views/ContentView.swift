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
            ZStack(alignment: Alignment.top){
              
                HeaderView()
                PelajaranView()
               
            }
            .background(Color("primary-bg"))
            .ignoresSafeArea(.all)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var icon : String
    var date : String
    var iconColor: String
    var cardColor: String
}

var Cdata = [
    Course(title:"UI/UX", icon: "diagram", date: "10.00 am", iconColor: "green-icon", cardColor: "green-light"),
    Course(title:"UI/UX", icon: "diagram", date: "10.00 am", iconColor: "green-icon", cardColor: "green-light"),
    Course(title:"UI/UX", icon: "diagram", date: "10.00 am", iconColor: "green-icon", cardColor: "green-light"),
    Course(title:"UI/UX", icon: "diagram", date: "10.00 am", iconColor: "green-icon", cardColor: "green-light"),
    Course(title:"UI/UX", icon: "diagram", date: "10.00 am", iconColor: "green-icon", cardColor: "green-light")
]
