//
//  GanjilView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 28/04/21.
//

import SwiftUI

//MARK: -Kategori Semester Ganjil
struct GanjilView: View {
    var body: some View{
        ZStack{
            ScrollView{
                VStack{
                    HStack{
                        Spacer()
                        Image("no-data")
                            .resizable()
                            .frame(width: 200, height: 200)
                        
                        Spacer()
                    }
                    VStack{
                        Text("Oops...!")
                            .foregroundColor(Color("dark-blue"))
                        Text("Data tidak ditemukan")
                            .foregroundColor(Color("dark-blue"))
                    }
                    
                    Spacer()
                    
                }
                Spacer()
            }
        }
        
    }
}


struct GanjilView_Previews: PreviewProvider {
    static var previews: some View {
        GanjilView()
    }
}
