//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(.default){
                isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius:isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.orange)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height:isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0 )
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
