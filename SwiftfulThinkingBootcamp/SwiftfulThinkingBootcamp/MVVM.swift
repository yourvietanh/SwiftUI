//
//  MVVM.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 01/04/2022.
//

import SwiftUI

struct MVVM: View {
   // var model: Model?
   @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack{
            ScrollView{
            ForEach(viewModel.listMVVM.indices, id: \.self) { index in
                let item = viewModel.listMVVM[index]
                Text(item.title ?? "")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Image(item.image ?? "")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Text(item.subtitle ?? "")
            }
            }
        }
        .onAppear {
            viewModel.getData()
        }
    }
}

struct MVVM_Previews: PreviewProvider {
    static var previews: some View {
        MVVM()
    }
}
struct Model {
    var title: String?
    var image: String?
    var subtitle: String?
}
class ViewModel: ObservableObject {
    @Published var listMVVM: [Model] = []
    
    func getData() {
        let data = [Model(title: "abc", image: "Night", subtitle: "123"),
        Model(title: "efg", image: "Night", subtitle: "oke")]
        self.listMVVM = data
                    
    }
}
