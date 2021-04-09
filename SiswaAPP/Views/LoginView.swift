//
//  LoginView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 02/04/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Login()
    }
}

struct Login : View {
    
    @EnvironmentObject var userAuth : LoginController
    
    @State var username: String = ""
    @State var password: String = ""
    @State var showAlert : Bool = false
    
    let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    //form validation
    @State var isEmptyField :Bool = false
    
    var body: some View {
        VStack {
            //MARK: -Header
            HStack {
                VStack(alignment: .leading){
                    Text("Hai")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Selamat Pagi!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Image("Hand")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: UIScreen.main.bounds.height/3.5)
                    .padding(.top)
            }
            .padding()
            .padding(.top,50)
            
           
            
            // MARK: -Content
            ZStack{
            
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
        }
        .background(Color("dark-blue"))
        .ignoresSafeArea(.all, edges: .all)
    }
}

//Cutom shape
struct CustomShape : Shape {
    var corner : UIRectCorner
    var radil : CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner ,cornerRadii: CGSize(width: radil, height: radil))
        
        return Path(path.cgPath)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
