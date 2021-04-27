//
//  NotifikasiView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 27/04/21.
//

import SwiftUI

struct NotifikasiView: View {
    @State var readNotification : Bool = false
    var body: some View {
        VStack{
            VStack{
                List{
                    VStack{
                        HStack{
                            Image("fa-notif")
                                .resizable()
                                .frame(width: 10, height: 10)
                            Text("Pemberitahuan")
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            Text("25-03-2021")
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            Spacer()
                        }
                        .padding(.bottom,10)
                        HStack{
                            Text("Lorem ipsum dolor sit amet.")
                                .fontWeight(.bold)
                                .font(.system(size: 14))
                            Spacer()
                        }
                        .padding(.bottom,10)
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam....")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .listRowBackground(self.readNotification == false ? Color("unread-message") : Color.white)
                    .padding(.top)
                    VStack{
                        HStack{
                            Image("fa-notif")
                                .resizable()
                                .frame(width: 10, height: 10)
                            Text("Pemberitahuan")
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            Text("25-03-2021")
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            Spacer()
                        }
                        .padding(.bottom,10)
                        HStack{
                            Text("Lorem ipsum dolor sit amet.")
                                .fontWeight(.bold)
                                .font(.system(size: 14))
                            Spacer()
                        }
                        .padding(.bottom,10)
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam....")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .listRowBackground(self.readNotification == false ? Color("unread-message") : Color.white)
                    .padding(.top)
                }
                
            }
        }
    }
    
}

struct NotifikasiView_Previews: PreviewProvider {
    static var previews: some View {
        NotifikasiView()
    }
}
