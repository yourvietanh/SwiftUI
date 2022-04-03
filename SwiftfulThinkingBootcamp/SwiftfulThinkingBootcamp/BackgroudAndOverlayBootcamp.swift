//
//  BackgroudAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct BackgroudAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
        Circle()
            .fill(
            LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            )
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        )
    }
}

struct BackgroudAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroudAndOverlayBootcamp()
    }
}
