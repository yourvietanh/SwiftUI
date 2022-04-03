//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack{
            backgroundColor
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}
struct ButtonView: View{
    @Binding var backgroundColor : Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    var body: some View{
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.red
            title = "New title !!!"
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
