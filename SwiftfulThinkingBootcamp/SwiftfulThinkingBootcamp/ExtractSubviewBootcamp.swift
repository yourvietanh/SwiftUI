//
//  ExtractSubviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 30/03/2022.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    @State var isCheck: Bool = false

    var body: some View {
        
//        ZStack{
//            Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)).ignoresSafeArea()
//
//            HStack{
//                MyItem(title: "Apples", count: 1, backgroundColor: .red)
//                MyItem(title: "Oranges", count: 10, backgroundColor: .orange)
//                MyItem(title: "Peaches", count: 5, backgroundColor: .pink)
//            }
//        }
        VStack{
            if isCheck {
                Text("aaa")
            }
            
            
            Button(action: {
                self.isCheck = !self.isCheck

            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
        }
    }
}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let backgroundColor: Color
    var body: some View {
        VStack{
            Text(title)
            Text("Count: \(count)")
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
    }
}
