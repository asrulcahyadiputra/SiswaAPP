//
//  profileView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 28/04/21.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        VStack{
            VStack{
                Text("Data Pribadi")
                Image("user")
                    .resizable()
                    .frame(width: 76, height: 76)
                Button(action:{}, label:{
                    Text("Ganti Gambar")
                        .foregroundColor(Color("dark-blue"))
                        .font(.system(size:14))
                })
                
            }
            .padding(.top,30)
            
            
            
            VStack(alignment: .leading, spacing: 15){
                List{
                    
                    VStack(alignment: .leading, spacing: 15){
                        Text("Nama")
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray)
                        Text("Asrul Cahyadi Putra")
                            .font(.system(size: 14))
                    }
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Text("No Telepon")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            Spacer()
                            Button(action: {}, label: {
                                Text("Ubah")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("dark-blue"))
                            })
                            
                        }
                        HStack{
                            Text("081280055856")
                                .font(.system(size: 14))
                            VStack{
                                Text("Terverifikasi")
                                    .font(.system(size:10))
                                    .foregroundColor(Color.green)
                                
                            }
                            .padding(5)
                            .background(Color("green-bg"))
                            
                            
                        }
                        
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Text("Email")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            Spacer()
                            Button(action: {}, label: {
                                Text("Ubah")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("dark-blue"))
                            })
                            
                        }
                        HStack{
                            Text("asrulcahyadiputra99@gmail.com")
                                .font(.system(size: 14))
                            VStack{
                                Text("Belum Verifikasi")
                                    .font(.system(size:10))
                                    .foregroundColor(Color.red)
                                
                            }
                            .padding(5)
                            .background(Color("red-bg"))
                            
                        }
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Text("Jenis Kelamin")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            Spacer()
                            Button(action: {}, label: {
                                Text("Ubah")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("dark-blue"))
                            })
                            
                        }
                        Text("Laki-Laki")
                            .font(.system(size: 14))
                    }
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Text("Agama")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            Spacer()
                            Button(action: {}, label: {
                                Text("Ubah")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("dark-blue"))
                            })
                            
                        }
                        Text("Islam")
                            .font(.system(size: 14))
                    }
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack{
                            Text("Tempat, Tanggal Lahir")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            Spacer()
                            Button(action: {}, label: {
                                Text("Ubah")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("dark-blue"))
                            })
                            
                        }
                        Text("Bandung 16/07/1999")
                            .font(.system(size: 14))
                    }
                    
                }
            }
        }
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
