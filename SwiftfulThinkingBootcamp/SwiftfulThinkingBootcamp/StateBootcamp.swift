//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backGroundColor: Color = Color.purple
    @State var myTitle: String = "This is a title"
    @State var count: Int = 0
    var body: some View {
        ZStack{
            //background
            backGroundColor
                .ignoresSafeArea()
            //content
            VStack(spacing:20){
                Text(myTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing:20){
                    Button("BUTTON 1") {
                        backGroundColor = Color.pink
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    Button("BUTTON 2") {
                        backGroundColor = Color.gray
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            } .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
