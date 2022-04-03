//
//  testForm.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct testForm: View {
    @State var password: String = ""
    var body: some View {
        Form{
            TextField("Type", text: $password)
            Text("Oke: \(password)")
        }
    }
}

struct testForm_Previews: PreviewProvider {
    static var previews: some View {
        testForm()
    }
}
