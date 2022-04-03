//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.green)
                .frame(height: 400)

            LazyVGrid(
                columns: columns,
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .background(Color.blue)
                                .padding()
                    ) {
                        ForEach(0..<30){ index in
                            Rectangle()
                                .frame(height:150)
                        }
                    }
                    Section(header:
                                Text("Section 2")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .background(Color.blue)
                                .padding()
                    ) {
                        ForEach(0..<30){ index in
                            Rectangle()
                                .fill(Color.orange)
                                .frame(height:150)
                        }
                    }
            })
        }
    }
}
struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
