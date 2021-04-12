//
//  PelajaranDetailView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 12/04/21.
//

import SwiftUI

struct PelajaranDetailView: View {
//    @ObservedObject var mp = MapelController()
  
    var body: some View {
        VStack{
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
            
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color("dark-blue"), Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 5, endRadius: 500))  
    }
}

struct PelajaranDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PelajaranDetailView()
    }
}
