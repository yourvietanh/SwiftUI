//
//  TestLoginScreen3.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 01/04/2022.
//

import SwiftUI

struct TestLoginScreen3: View {
    
    @State var remember: Bool = false
    @State var byPhone: Bool = false
    @State var loginButton: Bool = false
    @State var yourID: String = ""
    @State var yourPassword: String = ""
    @State var password: String
    @State var myTitle2: String
    
    var body: some View {
        
        
        NavigationView{
        VStack{
            VStack{
                HStack{
                    TextField("ID: \(myTitle2)", text: $myTitle2 )
                    Image("Vector")
                }
                .foregroundColor(.white)
                .font(.body)
                .padding(.horizontal,10 )
                .cornerRadius(10)
                .frame(width: 312, height: 48)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(#colorLiteral(red: 0.795496285, green: 0.04496917129, blue: 0.5122477412, alpha: 1)), lineWidth: 3.0)
                )
                
                HStack{
                    TextField("Password: \(password)", text: $password )
                    Image("eye")
                }
                .foregroundColor(.white)
                .font(.body)
                .padding(.horizontal,10 )
                .cornerRadius(10)
                .frame(width: 312, height: 48)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(#colorLiteral(red: 0.795496285, green: 0.04496917129, blue: 0.5122477412, alpha: 1)), lineWidth: 3.0)
                )
//                Text("ID:\(myTitle2)")
//                .foregroundColor(.blue)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                Text("Pass: \(password)")
//                .foregroundColor(.blue)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            VStack(spacing: 18) {


                HStack {
                    Text("Remember me")
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Button(action: {
                        self.remember = !self.remember
                    }, label: {
                        Image(self.remember ? "Checkbox" : "out")
                    })
                    .padding(.horizontal,10 )
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot Password?")
                            .foregroundColor(Color(#colorLiteral(red: 0.7912070155, green: 0.04784896225, blue: 0.5123685002, alpha: 1)))
                    })
                    
                }
                
            }
            VStack{
                Spacer()
                Text("Or signing up with")
                    .font(.body)
                    .frame(width: 140, height: 30)
                    .foregroundColor(.white)
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Image("FP")
                            .font(.body)
                            .frame(width: 56, height: 56)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.6059113741, alpha: 1)), Color(#colorLiteral(red: 0.3772484064, green: 0.06501189619, blue: 0.5049726963, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .trailing)
                                            .cornerRadius(20)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
                    })
                    Button(action: {
                        
                    }, label: {
                        Image("GG")
                            .font(.body)
                            .frame(width: 56, height: 56)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.6059113741, alpha: 1)), Color(#colorLiteral(red: 0.3772484064, green: 0.06501189619, blue: 0.5049726963, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .trailing)
                                            .cornerRadius(20)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
                    })
                    Button(action: {
                        
                    }, label: {
                        Image("FB")
                            .font(.body)
                            .frame(width: 56, height: 56)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.6059113741, alpha: 1)), Color(#colorLiteral(red: 0.3772484064, green: 0.06501189619, blue: 0.5049726963, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .trailing)
                                            .cornerRadius(20)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
                    })
                    Button(action: {
                        
                    }, label: {
                        Image("Indeed")
                            .font(.body)
                            .frame(width: 56, height: 56)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.6059113741, alpha: 1)), Color(#colorLiteral(red: 0.3772484064, green: 0.06501189619, blue: 0.5049726963, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .trailing)
                                            .cornerRadius(20)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
                    })
                }
                HStack {
                    Text("Version 1.0.1")
                        .foregroundColor(.gray)
                    Button(action: {
                        
                    }, label: {
                        Text("Creat Account")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(#colorLiteral(red: 0.7922420502, green: 0.04818318039, blue: 0.5149146318, alpha: 1)))
                    })
                    
                }
            }

        }
        .background(
            Image("Night")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .frame(width: .infinity, height: .infinity)
        )
        }
    }
}

struct TestLoginScreen3_Previews: PreviewProvider {
    @State var myTitle2: String = ""
    @State var password: String = ""
    static var previews: some View {
        TestLoginScreen3(password: "", myTitle2: "")
    }
}
