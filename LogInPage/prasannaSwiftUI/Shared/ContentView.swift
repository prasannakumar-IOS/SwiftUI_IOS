//
//  ContentView.swift
//  Shared
//
//  Created by Prasannakumar Manikandan on 04/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""

    var body: some View {
        ZStack(alignment: .top) {
            Image("cityOk")
                .resizable()
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .blur(radius: 10)
            VStack {
                VStack(spacing: 100) {
                    Text("Learning Task 1")
                        .font(.headline).bold()
                        .padding()
                        .foregroundColor(.white)
                    Text("Welcome")
                        .font(.system(size: 30)).bold()
                        .padding()
                        .foregroundColor(.white)
                }
                VStack(spacing: 10) {
                    Image("apple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                    Group {
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.blue)
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.blue)
                        Button(action: {
                            print("Button action")
                        }) {
                            Text("LogIn")
                                .frame(maxWidth: .infinity)
                                .frame(height: 30)
                                .foregroundColor(.black)
                                .background(Color.red)
                        }
                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
