//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor : Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        //self.backgroundColor = backgroundColor
        self.count = count
        
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
            
        }
            else {
                self.title = "Orange"
                self.backgroundColor = .orange
            }
        }
    
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 6, fruit: .orange)
            InitializerBootcamp(count: 100, fruit: .apple)
        }
    }
}
