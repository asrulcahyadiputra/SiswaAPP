//
//  GenapIView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 28/04/21.
//

import SwiftUI

//MARK: -Kategori Semeter Genap
struct GenapView: View {
    let courseCode: String
    var kodeSemester: String = "Genap"
    
    @State var dataKompt = [PreviewDataKompetensi]()
    @EnvironmentObject var userAuth : LoginController
    
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
                .onAppear{
                    ApiService.shareInstance.callingPreviewDetailMapelApi(kodeMatpel: courseCode, kodeSemester: "2") { ( response ) in
                        switch response {
                        case .success (let data) :
                            let results = (data as! PreviewDetail).success
                            
                            let dataKomp = results.dataKompetensi
                            
                            self.dataKompt = dataKomp
                            
                            print(self.dataKompt)
                            
                        case .failure (let err):
                            print("error")
                        }
                        
                    }
                    
                }
            }
        }
    }
}

