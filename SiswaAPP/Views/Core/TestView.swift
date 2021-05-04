//
//  TestView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 04/05/21.
//

import SwiftUI

struct TestView: View {
    @State var isPresented : Bool = false
    var body: some View {
        NavigationView {
            List(0..<20) {
                Text("\($0)")
            }.listStyle(PlainListStyle())
            .bottomSheet(isPresented: $isPresented, height: 300) {
                List(20..<40) { Text("\($0)") }.listStyle(PlainListStyle())
            }
            .navigationBarTitle("Bottom Sheet")
            .navigationBarItems(
                trailing: Button(action: { self.isPresented = true }) {
                    Text("Show")
                }
            )
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
