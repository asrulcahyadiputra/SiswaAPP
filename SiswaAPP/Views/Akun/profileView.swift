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
            Text("Data Pribadi")
            VStack{
                List{
                    VStack(alignment: .leading, spacing: 15){
                        Text("Nama")
                        Text("Asrul Cahyadi Putra")
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
