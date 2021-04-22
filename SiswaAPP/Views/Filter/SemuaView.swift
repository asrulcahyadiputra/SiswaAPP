//
//  SemuaView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 22/04/21.
//

import SwiftUI
import SwiftyJSON


struct SemuaView: View {
    let courseCode : String
    var kodeSemester: String =  "All"
    @State var detailMatpel = [DetailMapelResponse]()
    @EnvironmentObject var userAuth : LoginController
    
    var body: some View {
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
                        ForEach(self.detailMatpel.indices, id: \.self){ detailItem in
                            Text("Hallo")
                        }
                    }
                    .onAppear {
                        ApiService.shareInstance.callingDetailMapelApi(kodeMatpel: courseCode, kodeSemester: kodeSemester) { (response) in
                            
                            switch response {
                            case .success(let data):
                                
                                let results = (data as! DetailMapels).success
//                                self.detailMatpel = results
                                print(results)
                            case .failure(let err):
                                print("Error")
                                print(err.localizedDescription)
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

