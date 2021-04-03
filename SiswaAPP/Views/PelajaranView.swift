//
//  PelajaranView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI

struct PelajaranView: View {
    
    @EnvironmentObject var authUser : LoginController
    
//    func logout(){
//        authUser.isLogin = false
//    }
    
    var body: some View {
        BottomSheet {
            VStack() {
                Spacer()
                VStack(spacing: 18){
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 60, height: 4)
                    HStack{
                        Text("Mata Pelajaran")
                            .foregroundColor(.gray)
                        Spacer()
                        
                    }
                    .padding()
                    ScrollView(.vertical, showsIndicators: false, content:{
                        VStack(spacing: 10){
                            Text("Hello World")
                        }
                        .padding(.horizontal)
                        .padding(.top,10)
                        .padding(.bottom)
                       
                    })
                }
            }
        }
       
    }
}

struct PelajaranView_Previews: PreviewProvider {
    static var previews: some View {
        PelajaranView()
    }
}
