//
//  PelajaranView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI
import Alamofire


struct PelajaranView: View {
    
   @EnvironmentObject var authUser : LoginController
    
   @ObservedObject var mp = MapelController()
    
   
    var body: some View {
       
        BottomSheet {
            VStack() {
                Spacer()
                VStack(spacing: 20){
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
                                LazyVGrid(columns: [
                                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                ], spacing: 12, content: {
                                    ForEach(mp.mapels){ ls in
                                        VStack(alignment: .leading){
                                            Spacer()
                                                .frame(width: 100, height: 100)
                                                .background(Color.blue)
                                            
                                            Text(ls.singkatan)
                                                .font(.system(size:10, weight: .semibold))
                                        }
                                        .padding(.horizontal)
                                    }
                                })
                                .padding(.horizontal,12)
                                
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
