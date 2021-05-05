//
//  TestView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 04/05/21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        BottomSheet{
            ZStack{
                VStack{
                    HStack{
                        Capsule()
                            .fill(Color.gray.opacity(0.5))
                            .frame(width: 50, height: 5)
                    }
                    .padding(.top)
                    VStack{
                        Text("Detail Penilaian")
                            .fontWeight(.bold)
                            .font(.system(size: 14))
                        Image("no-image")
                            .resizable()
                            .frame(width: 300, height: 280)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Kompetensi Dasar 3.0")
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            
                            
                            VStack {
                                HStack {
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.")
                                        .font(.system(size:14))
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                
                                HStack {
                                    
                                    ProgressView("", value: 50 , total:100 )
                                        .progressViewStyle(LinearProgressViewStyle(tint:Color.red))
                                    Spacer()
                                    
                                    Text("50/100")
                                        .font(.system(size:10))
                                    
                                }
                                HStack{
                                    Text("Memuaskan, pertahankan nilai diatas minimum KKM 75")
                                        .font(.system(size:10))
                                    Spacer()
                                }
                                .padding(.bottom,10)
                                
                                HStack{
                                    Text("04/04/2021 || Genap")
                                        .font(.system(size:10))
                                        .foregroundColor(Color.gray)
                                    Spacer()
                                    
                                    
                                }
                            }
                            
                            .padding(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        }
                        .padding(.leading,30)
                        .padding(.trailing,30)
                        .padding(.bottom,15)
                        Spacer()
                    }
                }
            }
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
