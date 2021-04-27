//
//  PelajaranDetailView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 12/04/21.
//

import SwiftUI

struct PelajaranDetailView: View {
    
    let show : Mapel
    
    @ObservedObject var detailMapel = DetailMapelController()
    @State var selected = 0
    @State var detailMatpel = [DetailMapelResponse]()
    @State var namaTa = ""
    @State var namaGuru = ""
    @State var CourseCode = ""
    @State var PeriodCode = "All"
    @State var ClassCode = ""
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Image(show.kodeMatpel)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .padding(.leading,30)
                        .padding(.trailing,10)
                    VStack(alignment: .leading, spacing:15){
                        Text(show.nama)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text(namaGuru)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        Text(namaTa)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                 
                    .onAppear {
                        ApiService.shareInstance.callingDetailMapelApi(kodeMatpel: show.kodeMatpel, kodeSemester: "All") { (response) in
                            
                            switch response {
                            case .success(let data):
                                
                                let results = (data as! DetailMapels).success
                                let namaTa = results.dataTa[0].nama
                                self.namaTa = namaTa
                                
                                let namaGuru = results.dataGuru[0].namaGuru
                                self.namaGuru = namaGuru
                                
                                self.ClassCode = show.kodeMatpel
                            case .failure(let err):
                                print("Error")
                                print(err.localizedDescription)
                            }
                            
                        }
                    }
                }
                .padding(.top, 100)
                .padding(.bottom,30)
            }
            .background(Image("bg-detail-image"))
          
                VStack{
                    TopBar(selected: $selected)
                    VStack{
                        
                        if self.selected == 0 {
                            SemuaView(courseCode: show.kodeMatpel)
                        }
                        else if self.selected == 1 {
                            GanjilView()
                        }
                        else if self.selected == 2 {
                            GenapView()
                        }
                        
                    }
                }
            
            .background(Color.white)
            .clipShape(CustomCorner(corners: [.topLeft,.topRight]))
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}




//MARK: -Top BAR
struct TopBar: View {
    @Binding var selected: Int
    var body: some View{
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Text("Semester")
                    .foregroundColor(.gray)
                    .padding(.leading,30)
                    .padding(.trailing,20)
                Button(action: {
                    self.selected = 0
                  
                }){
                    Text("Semua")
                        .padding(.trailing,20)
                        .foregroundColor(self.selected == 0 ? Color("dark-blue") : .black)
                }
                Button(action: {
                    self.selected = 1
                   
                }){
                    Text("Ganjil")
                        .padding(.trailing,20)
                        .foregroundColor(self.selected == 1 ? Color("dark-blue") : .black)
                }
                
                Button(action: {
                    self.selected = 2
                   
                }){
                    Text("Genap")
                        .padding(.trailing,20)
                        .foregroundColor(self.selected == 2 ? Color("dark-blue") : .black)
                }
                
            }
        }
        .padding(.bottom)
        .padding(.top,30)
    }
    
}





//MARK: -Parameter Model
struct Params: Decodable, Identifiable {
    var id = UUID()
    let courseCode, classCode, periodCode: String
}
