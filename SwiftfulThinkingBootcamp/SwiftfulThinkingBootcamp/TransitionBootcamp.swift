//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 01/04/2022.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
