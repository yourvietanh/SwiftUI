//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 01/04/2022.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
            NavigationLink("Button",
                           destination: OrtherScreen())
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Title goes here")
//            navigationBarTitleDisplayMode(.automatic)
//            navigationBarHidden(true)
        }
    }
}
struct OrtherScreen: View {
    @Environment(\.presentationMode) var pretationMode
    var body: some View{
        ZStack{
        Color.orange
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Button("Back here") {
                    pretationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd screen"))
                    .padding()
            }
        }
    }
}
struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
