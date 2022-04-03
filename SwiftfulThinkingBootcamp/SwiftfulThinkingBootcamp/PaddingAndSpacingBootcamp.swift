//
//  PaddingAndSpacingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct PaddingAndSpacingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!, this is SwiftUI")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.vertical, 10)
            Text("This is description about what we are going to do on the screen")
        }
        .padding()
        .background(Color.white)
        .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .shadow(color: Color.black.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct PaddingAndSpacingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacingBootcamp()
    }
}
