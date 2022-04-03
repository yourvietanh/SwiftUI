//
//  TestLoginScreen2.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Viet Anh on 31/03/2022.
//

import SwiftUI

struct TestLoginScreen: View {
   // @State var myTitle: String = "+84"
    @State var myTitle2: String = "ID/Email/Phone number"
    @State var password: String = "Password"
    @State var remember: Bool = false
    
    var body: some View {
        VStack(spacing: 54){
            body1
            
            VStack(spacing: 18) {
                HStack{
                    TextField("ID/Email/Phone number", text: $myTitle2 )
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
                    TextField("ID/Email/Phone number", text: $myTitle2 )
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
    
                HStack {
                    Text("Remember me")
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Button(action: {
                        self.remember = !self.remember
                    }, label: {
                        Image(self.remember ? "Checkbox" : "out")
                            .background(self.remember ? Color(.red) : Color(.blue))
                    })
                    .padding(.horizontal,10 )
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot Password?")
                            .foregroundColor(Color(#colorLiteral(red: 0.7912070155, green: 0.04784896225, blue: 0.5123685002, alpha: 1)))
                    })
                    
                }
                Button(action: {
                    //self.myTitle = "Button was pressed"
                }, label: {
                    Text("Login")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 312, height: 50)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.6059113741, alpha: 1)), Color(#colorLiteral(red: 0.3772484064, green: 0.06501189619, blue: 0.5049726963, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                }
                )//.padding(.bottom,93)
            }
            Group3
        }
        
        .background(
            Image("Night")
                .resizable().ignoresSafeArea()
                .scaledToFill()
                .frame(width: .infinity, height: .infinity)
        )
    }
}

extension TestLoginScreen {
    var body1: some View {
        VStack{
           // Spacer()
            Text("LOGIN")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 245, height: 56)
                .padding(.init(top: 207, leading:65, bottom: 14, trailing: 65))
            
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("BY PHONE")
                        .font(.body)
                        .frame(width: 103, height: 20)
                        .padding(.horizontal, 6)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.6059113741, alpha: 1)), Color(#colorLiteral(red: 0.3772484064, green: 0.06501189619, blue: 0.5049726963, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                                        .cornerRadius(32)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
                })
                //Spacer()
                Button(action: {
                    
                }, label: {
                    Text("BY EMAIL")
                        .font(.body)
                        .frame(width: 103, height: 20)
                        .padding(.horizontal, 6)
                        .background(
                            Color.black
                                .cornerRadius(32)
                                .shadow(radius: 10))
                })
            }
            
            .font(.caption)
            .padding(.vertical,20 )
            .foregroundColor(.white)
            .cornerRadius(10)
            .frame(width: 230, height: 32)
            .background(
                Color.black
                    .cornerRadius(60)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
        }
    }
    
    var Group3: some View {
        VStack{
            Text("Or signing up with")
                .font(.body)
                .frame(width: 140, height: 30)
                .foregroundColor(.white)
            HStack(spacing: 18){
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
}

struct TestLoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestLoginScreen()
    }
}

