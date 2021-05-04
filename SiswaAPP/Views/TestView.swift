//
//  TestView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 04/05/21.
//

import SwiftUI

struct TestView: View {
    @State var test : String = ""
    var body: some View {
        BottomSheet{
            ZStack{
                VStack{
                    HStack{
                        Text("Icon Here")
                    }
                    VStack{
                        Text("Bottom Sheet")
                        Spacer()
                    }
                    .padding(30)
                }
            }
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
