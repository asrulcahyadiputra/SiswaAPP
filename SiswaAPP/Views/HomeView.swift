//
//  HomeView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//


import SwiftUI

struct HomeView: View {
    var body: some View {
        Home()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Home : View {
    
    @EnvironmentObject var userAuth : LoginController
    @ObservedObject var mp = MapelController()
    @State var index = 0
    
    var body: some View{
        NavigationView{
            VStack(spacing: 0){
                ZStack{
                    VStack{
                        
                        HStack{
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("user")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                            
                            VStack(alignment:.leading){
                                Text(userAuth.name)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Kelas " + userAuth.kodeKelas)
                                    .font(.system(size: 14))
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                           
                            
                        }
                        .padding(.horizontal)
                        .padding(.top,70)
                        .padding(.bottom, 50)
                    }
                  
                }
                .background(Color.white)
               
               
                ZStack{
                    
                    ScrollView(.vertical, showsIndicators: false){
                        ScrollView(.vertical, showsIndicators: false, content:{
                            VStack(spacing: 20){
                                ScrollView {
                                    LazyVGrid(columns: [
                                        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                    ], spacing: 12, content: {
                                        //list mapel here
                                      
                                        ForEach(mp.mapels){ ls in
                                            NavigationLink( destination: PelajaranDetailView()){
                                                VStack(alignment: .center){
                                                 
                                                    Image(ls.kodeMatpel)
                                                        .resizable()
                                                        .frame(width: 50, height: 50)
                                                        .shadow(radius: 0.3)
                                                        .padding()
                                                    Text(ls.singkatan)
                                                        .font(.system(size: 14))
                                                }
                                                .padding(.horizontal)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            
                                        }
                                        
                                      
                                        
                                    })
                                    .padding(.horizontal,12)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.top,10)
                            .padding(.bottom)
                        })
                        .padding(.bottom,60)
                        
                        
                    }
                    .background(Color.white)
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color("bg-dark"))
            .statusBar(hidden: true)
        }
        
       
    }
}

