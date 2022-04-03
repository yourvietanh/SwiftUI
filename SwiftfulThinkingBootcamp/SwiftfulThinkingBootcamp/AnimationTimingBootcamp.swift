//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle() 
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
