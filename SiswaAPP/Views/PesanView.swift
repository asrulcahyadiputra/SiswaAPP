//
//  PesanView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI

struct PesanView: View {
    @State var selectedPesan = 0
    var body: some View {
        VStack{
            VStack{
                VStack{
                    PesanTopBar(selected: $selectedPesan)
                    GeometryReader{ _ in
                        VStack{
                            if self.selectedPesan == 0 {
                                InboxView()
                            }
                            else if self.selectedPesan == 1 {
                                NotifikasiView()
                                
                            }
                        }
                        Spacer()
                    }
                }
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .all)    }
}




struct PesanTopBar: View {
    @Binding var selected: Int
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    Button(action: {
                        self.selected = 0
                    }){
                        HStack{
                            Image(systemName: "message")
                                .foregroundColor(self.selected == 0 ? Color("dark-blue") : .gray)
                            Text("Inbox")
                                .foregroundColor(self.selected == 0 ? Color("dark-blue") : .gray)
                        }
                    }
                    Spacer()
                    Button(action: {
                        self.selected = 1
                    }){
                        HStack{
                            Image(systemName: "bell")
                                .foregroundColor(self.selected == 1 ? Color("dark-blue") : .gray)
                            Text("Notifikasi")
                                .foregroundColor(self.selected == 1 ? Color("dark-blue") : .gray)
                        }
                    }
                }
                .padding(.top,80)
                .padding(.leading,80)
                .padding(.trailing,80)
                .padding(.bottom,20)
            }
            .background(Color.white.shadow(radius: 5, x: 0.0, y: 0.0))
            
            Spacer()
        }
    }
}

struct InboxView: View {
    var body: some View{
        VStack{
            List{
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading){
                        Text("Bahasa Indonesia")
                        Text("Lorem ipsum dolor sit amet, consectetur")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack{
                        Text("10.20")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                       Text("3")
                        .font(.system(size: 14))
                        .padding(7)
                        .background(Color("dark-blue"))
                        .clipShape(Circle())
                        .foregroundColor(.white)
                       
                    }
                }
               
                .padding(.bottom,20)
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading){
                        Text("Matematika")
                        Text("Lorem ipsum dolor sit amet, consectetur")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack{
                        Text("31/03/2021")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                      
                       
                    }
                    
                  
                }
               
                .padding(.bottom,20)
                .padding(.top,20)
                
                
            }
            .onAppear {
             UITableView.appearance().separatorStyle = .none
            }
            .onDisappear {
                UITableView.appearance().separatorStyle = .singleLine
            }
            
        }
        .padding(.top,20)
    }
}

