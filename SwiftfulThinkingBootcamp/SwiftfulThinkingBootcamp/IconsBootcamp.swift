//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            //.aspectRatio(contentMode: .fit )
            //.font(.system(size: 80))
            .scaledToFill()
            .foregroundColor(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
            .frame(width: 200, height: 200)
            .clipped()
        
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
