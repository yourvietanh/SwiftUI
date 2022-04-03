//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
     //   Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            HStack(spacing: 0){
                
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                Image(systemName: "gear")
                
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            //.background(Color.yellow)
            .padding(.horizontal)
           // .background(Color.orange)
            
            Spacer()
                .frame(width: 10)
                .background(Color.red)
            Rectangle()
                .frame(height: 50)
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
