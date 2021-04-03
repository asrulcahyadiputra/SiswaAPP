//
//  TabBarView.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import SwiftUI

struct BottomSheet<Content: View>: View {
  
   @GestureState private var dragState =   DragState.inactive
   @State var position =  CardPosition.bottom
    
    let gradient = Gradient(colors: [Color("dark-blue"), Color("blue")])
    
    var content: () -> Content
    
    var body: some View{
        let drag = DragGesture()
            .updating($dragState){
                drag,State, transaction in
                State = .dragging(translation: drag.translation)
            }
            .onEnded(onDragEnded)
        
        return self.content()
            .frame(height: UIScreen.main.bounds.height)
            .background(Color(.white))
            .cornerRadius(30)
            .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.13), radius: 10)
            .offset(y:self.position.rawValue + self.dragState.translation.height)
            .animation(self.dragState.isDragging ? nil : .interpolatingSpring(stiffness: 300, damping: 30, initialVelocity: 10))
            .gesture(drag)
        
    }
    private func onDragEnded(drag: DragGesture.Value){
        let verticalDirection = drag.predictedEndLocation.y - drag.location.y
        let cardTopEdgeLocation = self.position.rawValue + drag.translation.height
        let positionAbove : CardPosition = .top
        let positionBelow: CardPosition = .bottom
        let closestPosition : CardPosition
        
        if (cardTopEdgeLocation - positionAbove.rawValue < (positionBelow.rawValue - cardTopEdgeLocation)) {
            closestPosition = positionAbove
        }else{
            closestPosition = positionBelow
        }
        
        if(verticalDirection > 0){
            self.position = positionBelow
        }else if (verticalDirection < 0){
            self.position = positionAbove
        }else{
            self.position = closestPosition
        }
    }
    
   
}

//struct TabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView()
//    }
//}

enum CardPosition: CGFloat {
    case top = 50
    case bottom = 450
}

enum DragState {
    case inactive
    case dragging(translation: CGSize)
    
    var translation:CGSize {
        switch self {
        case .inactive:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }
    var isDragging: Bool {
        switch self {
        case .inactive:
            return false
        case .dragging:
            return true
        }
    }
}
