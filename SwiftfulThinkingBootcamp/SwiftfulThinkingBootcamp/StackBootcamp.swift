//
//  StackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Rectangle()
                .fill(Color.blue)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Rectangle()
                .fill(Color.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }) 
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
    }
}
