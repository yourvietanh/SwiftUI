//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Title goes here")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                ForEach(0..<40){ index in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                }
            }
        
//        ZStack {
//            //Background
//
//
//            //Foreground
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.orange)
//            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//        }
        }
        .background(
            Color.orange
                .ignoresSafeArea()
        )
    }
}
struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
