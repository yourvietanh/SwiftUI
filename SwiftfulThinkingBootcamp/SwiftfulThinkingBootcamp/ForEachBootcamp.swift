//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 29/03/2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["H","E","L","L","O"]
    let myString: String = "vtothea"
    var body: some View {
        
        VStack{
            ForEach(data.indices){ Index in
                Text("\(data[Index]): \(Index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
