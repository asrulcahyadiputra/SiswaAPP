//
//  PelajaranView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI

struct PelajaranView: View {
    
    @EnvironmentObject var authUser : LoginController
    
    @ObservedObject var mapelController = MapelController()
    
    var body: some View {
        
        BottomSheet {
            VStack() {
                Spacer()
                VStack(spacing: 18){
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 60, height: 4)
                    HStack{
                        Text("Mata Pelajaran Kelas " + authUser.kodeKelas)
                            .foregroundColor(.gray)
                        Spacer()
                        
                    }
                    .padding()
                    ScrollView(.vertical, showsIndicators: false, content:{
                        VStack(spacing: 10){
                            ScrollView {
                                LazyVStack(alignment: .leading, spacing: 30){
                                    ForEach(0..<10){ num in
                                        Text("Successfully")
                                    }
                                    .onAppear {
                                        mapelController.loadMapel(kode: authUser.kodeKelas, token: authUser.userToken)
                                    }
                                }
                            }
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

struct CList : Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var iconColor: String
}

var lData = [
    CList(name: "Mapel 1", icon: "diagram", iconColor: "green-icon"),
    CList(name: "Mapel 2", icon: "diagram", iconColor: "green-icon"),
    CList(name: "Mapel 3", icon: "diagram", iconColor: "green-icon"),
    CList(name: "Mapel 4", icon: "diagram", iconColor: "green-icon"),
    CList(name: "Mapel 5", icon: "diagram", iconColor: "green-icon"),
]
