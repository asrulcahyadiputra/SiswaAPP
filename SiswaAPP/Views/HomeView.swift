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
        
        VStack(spacing: 0){
            
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
                        .fontWeight(.bold)
                }
                
                Spacer()
               
                
            }
            .padding(.horizontal)
            .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
            .padding(.bottom, 80)
            .background(Color.white)
            
            HStack{
                Spacer()
                VStack{
                    HStack{
                        HStack{
                            VStack(alignment: .leading, spacing: 15){
                                Text(userAuth.name)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Kelas " + userAuth.kodeKelas)
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                            }
                            .padding(.top,15)
                        }
                        .foregroundColor(.black)
                    }
                    .padding()
                }
                // setting custom width...
                .padding(.bottom, 35)
                .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color.white)
                .clipShape(Corners(corner: [.topLeft,.topRight,.bottomLeft,.bottomRight], size: CGSize(width: 30, height: 30)))
                Spacer()
            }
            .padding(.top, -70)
            .padding(.bottom,10)
            .shadow(color:Color("shadow").opacity(0.3), radius: 20, x: 0, y: 16)
            
            ZStack{
                
                Color("dark-blue")
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    HStack{
                        
                        Text("Mata Pelajaran")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding(.leading, 35)
                    .padding(.top, 30)
                    .padding(.trailing)
                    
                    ScrollView(.vertical, showsIndicators: false, content:{
                        VStack(spacing: 10){
                            ScrollView {
                                LazyVGrid(columns: [
                                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                    GridItem(.flexible(minimum: 100, maximum: 200), spacing: 12, alignment: .top),
                                ], spacing: 12, content: {
                                    //list mapel here
                                  
                                        ForEach(mp.mapels){ ls in
                                         
                                            VStack(alignment: .center){
                                                Spacer()
                                                Text(ls.singkatan)
                                                    .font(.system(size:14, weight: .semibold))
                                                    .foregroundColor(Color.white)
                                                    .frame(width: 100, height: 100)
                                                    .background(Color.blue)
                                                    .cornerRadius(50)
                                                    .shadow(radius: 0.3)
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
                    .padding(.bottom,60)
                    
                    
                }
                .background(Color("bg-dark"))
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color("bg-dark"))
        .statusBar(hidden: true)
    }
}

struct CardView : View {
    
    @State var index = 0
    
    var body: some View{
        
        HStack(spacing: 25){
            
            VStack(spacing: 12){
                
                Image(systemName: "desktopcomputer")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                Text("IT")
                    .foregroundColor(self.index == 0 ? .white : .black)
            }
            .padding(.horizontal, 5)
            .padding(.vertical,30)
            .background(self.index == 0 ? Color("primary-bg") : Color.black.opacity(0.06))
            .clipShape(Corners(corner: [.topRight,.topLeft,.bottomRight,.bottomLeft], size: CGSize(width: 30, height: 30)))
            .onTapGesture {
                
                self.index = 0
            }
            
            VStack(spacing: 12){
                
                Image(systemName: "quote.bubble.fill")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                Text("Content")
                    .foregroundColor(self.index == 1 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical,30)
            .background(self.index == 1 ? Color("primary-bg") : Color.black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                
                self.index = 1
            }
            
            VStack(spacing: 12){
                
                Image(systemName: "photo.on.rectangle")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                Text("Culture")
                    .foregroundColor(self.index == 2 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical,30)
            .background(self.index == 2 ? Color("primary-bg") : Color.black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                
                self.index = 2
            }
            
            VStack(spacing: 12){
                
                Image(systemName: "scissors")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                Text("Beauty")
                    .foregroundColor(self.index == 3 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical,30)
            .background(self.index == 3 ? Color("primary-bg") : Color.black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 3
            }
        }
        .padding(.horizontal, 25)
        
        
    }
}

struct Corners : Shape {
    
    var corner : UIRectCorner
    var size : CGSize
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: size)
        
        return Path(path.cgPath)
    }
}
