//
//  HeaderView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var authUser : LoginController
    var body: some View {
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .overlay(Image("user").resizable())
                Text(authUser.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Spacer()

                Button(action: {}){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                }
            }

            Image("eLearning")
                .resizable()
                .cornerRadius(20)
                .frame(height:((UIScreen.main.bounds.width - 60) * 9) / 16)
                .padding(.top,70)
        }
        .padding(.top,50)
        .padding(.horizontal,30)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
