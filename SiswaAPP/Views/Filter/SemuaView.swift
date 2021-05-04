//
//  SemuaView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 22/04/21.
//

import SwiftUI
import Alamofire

struct SemuaView: View {
    let courseCode : String
    var kodeSemester: String =  "All"
    
    @State var dataKompt = [PreviewDataKompetensi]()
    @State var halfModal_shown = false
    @State var errorStatus : Bool = false
    
    @EnvironmentObject var userAuth : LoginController
    
    var body: some View {
        
        VStack {
            if(self.errorStatus){
                Text("Data Ksong Eui")
            }else{
                ScrollView(.vertical, showsIndicators: false ,content: {
                    LazyVStack(alignment: .leading, content: {
                        ForEach(self.dataKompt){ dt in
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Kompetensi Dasar  \(dt.kodeKd)")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                HStack{
                                    Text(dt.namaKd)
                                        .font(.system(size: 14))
                                    Spacer()
                                }
                                .padding(.bottom,10)
                                ForEach(dt.pelaksanaan) { sdt in
                                    VStack {
                                        HStack {
                                            Text(sdt.pelaksanaan)
                                                .font(.system(size:14))
                                                .fontWeight(.bold)
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            let nilai = (sdt.nilai as NSString).doubleValue
                                            let kkm = (sdt.kkm as NSString).doubleValue
                                            ProgressView("", value: nilai , total:100 )
                                                .progressViewStyle(LinearProgressViewStyle(tint: nilai >= kkm ? Color.green : Color.red))
                                            Spacer()
                                            
                                            Text("\(String(format: "%.0f", nilai))/100")
                                                .font(.system(size:10))
                                            
                                        }
                                        HStack{
                                            Text(sdt.keterangan)
                                                .font(.system(size:10))
                                            Spacer()
                                        }
                                        .padding(.bottom,10)
                                        
                                        HStack{
                                            Text("\(sdt.tgl) || \(sdt.semester)")
                                                .font(.system(size:10))
                                                .foregroundColor(Color.gray)
                                            Spacer()
                                            
                                            Button(action: {
                                                print("Click Me !!")
                                                self.halfModal_shown.toggle()
                                            }){
                                                Text("Selengkapnya")
                                                    .font(.system(size: 10))
                                                    .foregroundColor(Color("dark-blue"))
                                            }
                                        }
                                    }
                                    
                                    .padding(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                                    
                                }
                                
                            }
                            .padding(.leading,30)
                            .padding(.trailing,30)
                            .padding(.bottom,15)
                        }
                    })
                    
                })
                
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            ApiService.shareInstance.callingPreviewDetailMapelApi(kodeMatpel: courseCode, kodeSemester: "All") { (response) in
                
                switch response {
                case .success(let data):
                    
                    let results = (data as! PreviewDetail).success
                    let dataKomp = results.dataKompetensi
                    
                    self.dataKompt = dataKomp
                    let check = dataKomp.count
                    print(check)
                    if(check > 0){
                        self.errorStatus = false
                    }else{
                        self.errorStatus = true
                    }
                    
                //print(self.dataKompt)
                
                case .failure(let err):
                    print("Error")
                    print(err.localizedDescription)
                }
                
            }
        }
    }
}

