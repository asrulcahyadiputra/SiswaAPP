//
//  PelajaranDetailView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 12/04/21.
//

import SwiftUI

struct PelajaranDetailView: View {
    //    @ObservedObject var mp = MapelController()
    @State var selected = 0
    var body: some View {
        VStack {
            //MARK: -Header
            VStack{
                HStack {
                    Image("BSU")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .padding(.leading,30)
                        .padding(.trailing,10)
                    VStack(alignment: .leading, spacing:15){
                        Text("Mandarin")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("Mandarin")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text("Mandarin")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                    }
                    Spacer()
                }
                .padding(.top, 100)
                .padding(.bottom,30)
            }
            //MARK: -Content
            ZStack{
                VStack{
                    TopBar(selected: $selected)
                    
                    GeometryReader{ _ in
                        VStack{
                            if self.selected == 0 {
                                SemuaView()
                            }
                            else if self.selected == 1 {
                                GanjilView()
                                
                            }
                            else if self.selected == 2 {
                                GenapView()
                            }
                        }
                    }
                }
               
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .clipShape(CustomCorner(corners: [.topLeft,.topRight]))
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color("gradient-blue"), Color.white]), center: .center, startRadius: 2, endRadius: 1200))
        .ignoresSafeArea(.all, edges: .all)
        Spacer()
        
    }
}
//MARK: -Top BAR
struct TopBar: View {
    @Binding var selected: Int
    var body: some View{
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Text("Semester")
                    .foregroundColor(.gray)
                    .padding(.leading,30)
                    .padding(.trailing,20)
                Button(action: {
                    self.selected = 0
                }){
                    Text("Semua")
                        .padding(.trailing,20)
                        .foregroundColor(self.selected == 0 ? Color("dark-blue") : .black)
                }
                Button(action: {
                    self.selected = 1
                }){
                    Text("Ganjil")
                        .padding(.trailing,20)
                        .foregroundColor(self.selected == 1 ? Color("dark-blue") : .black)
                }
                
                Button(action: {
                    self.selected = 2
                }){
                    Text("Genap")
                        .padding(.trailing,20)
                        .foregroundColor(self.selected == 2 ? Color("dark-blue") : .black)
                }
                
                Spacer()
            }
            Spacer()
        }
        .padding(.top,30)
    }
  
}

//MARK: -Kategori semeter semua
struct SemuaView: View {
    var body: some View{
        Text("Semua Semester")
    }
}

//MARK: -Kategori Semester Ganjil
struct GanjilView: View {
    var body: some View{
        Text("Semester Ganjil")
    }
}

//MARK: -Kategori Semeter Genap
struct GenapView: View {
    var body: some View{
        Text("Semester Genap")
    }
}

struct PelajaranDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PelajaranDetailView()
    }
}