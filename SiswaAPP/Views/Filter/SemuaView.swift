//
//  SemuaView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 22/04/21.
//

import SwiftUI
import SwiftyJSON
import Alamofire

struct SemuaView: View {
    let courseCode : String
    var kodeSemester: String =  "All"
    
    @State var detailMatpel : JSON = JSON()
    @State var dataKompt : [PreviewDataKompetensi] = []
    @EnvironmentObject var userAuth : LoginController
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                   
                    VStack{
                        ForEach(self.dataKompt){ dt in
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Kompotensi Dasar \(dt.kodeKd)")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                HStack{
                                    Text(dt.namaKd)
                                        .font(.system(size: 14))
                                    Spacer()
                                }
                                
                            }
                            .padding(.leading,30)
                            .padding(.trailing,30)
                            .padding(.bottom,15)
                        }
                        
                    }
                    .onAppear {
                        let headers: HTTPHeaders = [
                            "Authorization": "Bearer " + userToken!,
                        ]
                        
                        let parameters : Parameters = [
                            "kode_kelas"    : kodeKelas!,
                            "kode_sem"      : kodeSemester,
                            "kode_matpel"   : courseCode
                        ]
                        
                        AF.request(detailMapel_url, method: .get,parameters: parameters ,encoding: URLEncoding.queryString, headers: headers ).response {
                            response in
                          
                            switch response.result {
                            case .success(let data):
                                let responseData = JSON(data)
                                let dataKompt = responseData["success"]["data_kompetensi"]
                                self.detailMatpel = responseData
                                for item in dataKompt.arrayValue {
                                    let komp = PreviewDataKompetensi(kodeKd: item["kode_kd"].string!,
                                                                     namaKd: item["nama_kd"].string!,
                                                                    pelaksanaan: [],
                                                                    semester: item["semester"].string!)
                                    self.dataKompt.append(komp)
                                }
                                
                               
                                break;
                            case .failure(let err):
                               print(err)
                            }
                        }
                    }
                    
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
}

