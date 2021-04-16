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
        .ignoresSafeArea(.all, edges: .all)
        Spacer()
    }
}

struct PesanView_Previews: PreviewProvider {
    static var previews: some View {
        PesanView()
    }
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
            .background(Color.white)
            .shadow(radius: 10, x: 0.0, y: 0.0)
            Spacer()
        }
    }
}

struct InboxView: View {
    var body: some View{
        Text("Inbox")
    }
}

struct NotifikasiView: View {
    var body: some View{
        Text("Notifikasi")
    }
}
