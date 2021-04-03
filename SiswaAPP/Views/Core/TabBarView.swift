//
//  TabBarView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI

struct TabBarView: View {
    @State var selected = 0
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                Capsule()
                    .frame(width: 350, height: 60, alignment: .center)
                    .foregroundColor(Color("tabbar-color"))
                    .shadow(radius: 7)
                HStack{
                    Spacer()
                    Button(action: {
                        self.selected = 0
                    }){
                        if(self.selected == 0){
                            Image(systemName: "book.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                           
                        }else{
                            Image(systemName: "book")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                        }
                      
                    }
                    Spacer()
                    Button(action: {
                        self.selected = 1
                    }){
                        if(self.selected == 1){
                            Image(systemName: "message.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                            
                        }else{
                            Image(systemName: "message")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                        }
                       
                    }
                    Spacer()
                    Button(action: {
                        self.selected = 2
                    }){
                        if(self.selected == 2){
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                        }else{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                        }
                       
                    }
                    Spacer()
                }
                
            }
           
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
