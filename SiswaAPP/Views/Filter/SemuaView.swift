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
    @State var detailMatpel = []
    @State var dataKompotensi = []
    @EnvironmentObject var userAuth : LoginController
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    VStack{
                      
                        ForEach(self.dataKompotensi.indices, id: \.self){ lItem in
                            Text("Kompetensi Dasar 3.6" )
                        }
                    }
                    .onAppear {
                        let headers: HTTPHeaders = [
                            "Authorization": "Bearer " + userToken!,
                        ]
                        let parameters : Parameters = [
                            "kode_kelas"    : kodeKelas!,
                            "kode_sem"      : "All",
                            "kode_matpel"   : self.courseCode
                        ]
                        AF.request(detailMapel_url, method: .get,parameters: parameters ,encoding: URLEncoding.queryString, headers: headers).responseJSON { response in
                            switch response.result {
                            case .success(let values):
                                let ResponseData = JSON(values)
                                let data = ResponseData["success"]
                                let dataKompotensi = data["data_kompetensi"]
                                self.detailMatpel = [data]
                                self.dataKompotensi = [dataKompotensi]
                                print(dataKompotensi)
                                
                            case .failure(let error):
                                print(error)
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





