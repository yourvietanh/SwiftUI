//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
            ScrollView{
                VStack{
                    ForEach(0..<20) { index in
                        ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                                    HStack{
                                        ForEach(0..<10) { index in
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                            .fill(Color.white)
                                            .frame(width:200, height: 150)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
                                            .padding()
                                    }
                                }
                            })
                        }
                    }
                }
            }
        }
struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
