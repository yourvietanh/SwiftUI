//
//  TestUI.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct TestUI: View {
    var body: some View {
            VStack(alignment: .leading) {
                    Text("Reset Password")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.init(top: 200, leading:10, bottom: 30, trailing: 100))
                Text("Password:")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 10)
                     Divider()
                HStack {
                    Text("Confirm password:")
                        .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 10)
                    Spacer()
                    Image(systemName: "eye")
                    .padding(.horizontal, 10)
                }
                .padding(.vertical, 10)
                Divider()
                
                HStack{
                    Spacer()
                    Button(action: { }, label: {
                                Text("Continue")
                                    .bold()
                                    .font(Font.custom("Helvetica Neue", size: 24.0))
                                    .padding(15)
                                    .foregroundColor(Color.white)
                                    .background(Color.purple)
                                    .cornerRadius(50)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    })
                    Spacer()
                }
                Text("NOTE: This will be change the password for your individual account number 000000")
                    .padding(20)
                    .foregroundColor(.black)
                    Spacer()
                    .padding(.vertical, 10)
                }
                    Divider()
        }
    }

struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        TestUI()
            .preferredColorScheme(.light)
    }
}
