//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    var body: some View {
        VStack(spacing: 20){
            Button("Rectangle button:\(showRectangle.description)") {
                showRectangle.toggle()
            }
            Button("Circle button: \(showCircle.description)") {
                showCircle.toggle()
            }
            if showCircle{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            if showRectangle{
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            if showCircle && showRectangle{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
