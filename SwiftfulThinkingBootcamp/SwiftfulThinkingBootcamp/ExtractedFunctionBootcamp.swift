//
//  ExtractedFunctionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    @State var  backgroundColor: Color = Color.pink
    var body: some View {
        ZStack{
            //background
            backgroundColor.ignoresSafeArea()
            //content
            contentLayout
        }
    }
    var contentLayout: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPress()

            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    func buttonPress(){
        backgroundColor = Color.blue
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
