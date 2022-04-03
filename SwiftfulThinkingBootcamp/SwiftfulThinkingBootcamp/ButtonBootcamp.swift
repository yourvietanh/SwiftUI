//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title = "This is a title"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            
            Button("Press me!") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
                
            })
            Button(action: {
                self.title = "Button 3 was pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)))
                    )
            })
            Button(action: {
                self.title = "Button 4 was pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            })
        }
    }
}
struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
