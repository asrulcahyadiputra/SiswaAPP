//
//  GanjilView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 28/04/21.
//

import SwiftUI

//MARK: -Kategori Semester Ganjil
struct GanjilView: View {
    let courseCode: String
    let kodeSemester : String = "Ganjil"
    @State var dataKompt = [PreviewDataKompetensi]()
    @State var errorStatus : Bool = false
    @EnvironmentObject var userAuth: LoginController
    var body: some View{
        ZStack{
            ScrollView (.vertical){
                VStack{
                    if(self.errorStatus){
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
                            Text("Data Semester Ganjil tidak ditemukan")
                                .foregroundColor(Color("dark-blue"))
                        }
                        
                        Spacer()
                        
                    }else{
                        ForEach(self.dataKompt){ dt in
                            Text("Data here !")
                            
                        }
                    }
                    
                    
                }
                .onAppear{
                    ApiService.shareInstance.callingPreviewDetailMapelApi(kodeMatpel: courseCode, kodeSemester: "Ganjil") { (response) in
                        switch response {
                        case .success(let data) :
                            let results = (data as! PreviewDetail).success
                            let dataKomp = results.dataKompetensi
                            
                            self.dataKompt = dataKomp
                            
                            print(self.dataKompt)
                        case .failure(let err):
                            print("error")
                            self.errorStatus = true
                            print(err.localizedDescription)
                        }
                        
                    }
                }
            }
        }
        
    }
}

