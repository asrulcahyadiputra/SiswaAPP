//
//  KeuanganView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 05/05/21.
//

import SwiftUI

struct KeuanganView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Tagihan")
                        .foregroundColor(Color.white)
                        .font(.system(size: 10))
                    Spacer()
                    Text("Jatuh Tempo")
                        .foregroundColor(Color.white)
                        .font(.system(size: 10))
                    
                }
                .padding(.top, 80)
                .padding(.trailing,30)
                .padding(.leading,30)
                HStack{
                    Text("3.200.000")
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Spacer()
                    Text("30 April 2021")
                        .foregroundColor(Color.white)
                        .font(.system(size: 10))
                        .fontWeight(.bold)
                }
                .padding(.bottom,20)
                .padding(.leading,30)
                .padding(.trailing,30)
            }
            .background(Image("bg-keuangan"))
            
            VStack{
                HStack{
                    Button(action: {}){
                        ZStack{
                            Image("Rectangle40")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Image("fi-rr-credit-card")
                                .resizable()
                                .frame(width: 24, height: 18)
                        }
                    }
                    .padding(.trailing,30)
                    
                    
                    Button(action: {}){
                        ZStack{
                            Image("Rectangle40")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Image("fi-rr-list")
                                .resizable()
                                .frame(width: 24, height: 18)
                        }
                    }
                    .padding(.trailing,30)
                    
                    Button(action: {}){
                        ZStack{
                            Image("Rectangle40")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Image("fi-rr-document")
                                .resizable()
                                .frame(width: 24, height: 20)
                        }
                    }
                    
                }
            }
            .padding(.bottom,30)
            
            VStack{
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack{
                        HStack{
                            Text("Riwayat Transaksi")
                                .font(.system(size: 14))
                            Spacer()
                            Button(action: {}, label: {
                                Text("Selengkapnya")
                                    .font(.system(size:12))
                                    .foregroundColor(.gray)
                            })
                        }
                        
                        VStack(alignment: .leading){
                            HStack{
                                
                                Image("fi-rr-receipt")
                                    .resizable()
                                    .frame(width: 15, height: 24)
                                    .padding(.trailing,10)
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("Tagihan")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                        Spacer()
                                        Text("2.359.000")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                       
                                    }
                                    .padding(.bottom,3)
                                    HStack{
                                        Text("BILL-0384794")
                                            .font(.system(size: 12))
                                            .foregroundColor(Color.gray)
                                        Text("19/01/21")
                                            .font(.system(size: 12))
                                            .foregroundColor(Color.gray)
                                        Spacer()
                                    }
                                    
                                }
                                
                                Spacer()
                                
                            }
                            .padding(.top)
                        }
                        
                        VStack(alignment: .leading){
                            HStack{
                                
                                Image("fi-rr-money")
                                    .resizable()
                                    .frame(width: 24, height: 16)
                                    .padding(.trailing,10)
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("Pembayaran")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                        Spacer()
                                        Text("2.359.000")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                       
                                    }
                                    .padding(.bottom,3)
                                    HStack{
                                        Text("BILL-0384794")
                                            .font(.system(size: 12))
                                            .foregroundColor(Color.gray)
                                        Text("19/01/21")
                                            .font(.system(size: 12))
                                            .foregroundColor(Color.gray)
                                        Spacer()
                                    }
                                    
                                }
                                
                                Spacer()
                                
                            }
                            .padding(.top)
                        }
                        
                        
                    }
                    .padding()
                    
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

struct KeuanganView_Previews: PreviewProvider {
    static var previews: some View {
        KeuanganView()
    }
}
