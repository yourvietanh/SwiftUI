//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack{
            Button("Button :\(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ?  /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 100,
                    height: isStartingState ? /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ : 10)
                
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
