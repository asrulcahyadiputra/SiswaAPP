//
//  HomeView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//


import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var userAuth : LoginController
    
    
    var body: some View {
        VStack{
            
            Home()
        }
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
    
    @State var tapActive = 0
    
    @State var index = 0
    
    @State var kodeMatpel = ""
    
    
    var body: some View{
        
        NavigationView{
            VStack(spacing: 0){
                HomeTabBar(selected: $tapActive)
                GeometryReader{ _ in
                    VStack{
                        if self.tapActive == 0 {
                            PenilaianView()
                        }
                        else if self.tapActive == 1 {
                            ReportView()
                            
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
        }
        
        
    }
}


//MARK: -HomeTabBar
struct HomeTabBar: View {
    @EnvironmentObject var userAuth : LoginController
    @Binding var selected: Int
    var body: some View{
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
                .padding(.bottom, 20)
                
                HStack{
                    Button(action: {
                        self.selected = 0
                    }) {
                        Image("fa-nilai")
                            .resizable()
                            .frame(width: 14, height: 14)
                        Text("Penilain")
                            .font(.system(size:14))
                            .foregroundColor(self.selected == 0 ? Color("dark-blue") : .black)
                    }
                    .padding(.trailing,30)
                    
                    Button(action: {
                        self.selected = 1
                    }){
                        Image("fa-nilai")
                            .resizable()
                            .frame(width: 14, height: 14)
                        Text("Report")
                            .font(.system(size:14))
                            .foregroundColor(self.selected == 1 ? Color("dark-blue") : .black)
                    }
                }
            }
        }
        .background(Color.white)
    }
}


//MARK: -Penilaian View

struct PenilaianView: View {
    
    @EnvironmentObject var userAuth : LoginController
    
    @ObservedObject var mp = MapelController()
    @State var selected = 0
    @State var index = 0
    @State var kodeMatpel = ""
    
    var body: some View {
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
                                
                                ForEach(mp.mapels){ mapelItem in
                                    
                                    NavigationLink( destination: PelajaranDetailView(show: mapelItem)){
                                        VStack(alignment: .center){
                                            
                                            Image(mapelItem.kodeMatpel)
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .shadow(radius: 0.3)
                                                .padding()
                                            Text(mapelItem.singkatan)
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
    
}

//MARK: -Report View

struct ReportView: View {
    var body: some View{
        ZStack{
            ScrollView(.vertical,showsIndicators: false ){
                VStack(alignment: .center){
                   
                    HStack{
                        Spacer()
                        Image("no-report")
                            .resizable()
                            .frame(width: 211, height: 211)
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        VStack{
                            Text("Nilai raport kamu akan segera")
                                .foregroundColor(Color("dark-blue"))
                            Text("hadir disini. Tunggu ya!")
                                .foregroundColor(Color("dark-blue"))
                        }
                      
                        Spacer()
                    }
                   
                }
            }
        }
    }
}

