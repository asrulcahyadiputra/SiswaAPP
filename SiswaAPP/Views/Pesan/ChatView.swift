//
//  ChatView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 04/05/21.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        
        VStack{
            VStack{
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading){
                        Text("Bahasa Indonesia")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                        Text("Budiman Laksono, S.Pd")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    
                }
                .padding(.top, 70)
                .padding(.bottom,30)
                .padding(.leading,30)
            }
            .background(Image("bg-detail-image"))
            
            VStack{
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack{
                        Text("04/04/2021")
                            .font(.system(size: 12))
                        VStack(alignment: .leading, spacing: 15){
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr.")
                                .font(.system(size: 14))
                                .padding()
                        }
                        
                        .background(Color("bg-dark"))
                        .clipShape(CustomCorner(corners: [.topLeft,.topRight,.bottomRight,.bottomLeft]))
                        HStack{
                            Text("10.45")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 12))
                            Spacer()
                            
                        }
                        .padding(.leading,20)
                    }
                    .frame(width: 300)
                    .padding(.top,20)
                    .padding(.bottom,30)
                    Spacer()
                })
               
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .clipShape(CustomCorner(corners: [.topLeft,.topRight]))
        }
        .ignoresSafeArea(.all, edges: .all)
       
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
