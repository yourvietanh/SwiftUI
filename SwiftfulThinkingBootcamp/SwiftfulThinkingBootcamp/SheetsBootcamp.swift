//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 01/04/2022.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundColor(.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/))
            })
            .sheet(isPresented: $showSheet, content: {
                SC2()
            })
        }
    }
}

struct SC2: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.blue
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                ///*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
                 //   .background(Color.white.cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/))
            })
        }
    }

}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
