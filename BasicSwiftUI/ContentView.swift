//
//  ContentView.swift
//  BasicSwiftUI
//
//  Created by user on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var login = ""
    @State var password = ""
    @State var shwoAlert = false
    
    var body: some View {
        ZStack {
            Image("backgroud")
                .resizable()
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("My App")
                        .padding(.top, 50)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    HStack {
                        Text("Login:")
                            .foregroundColor(.white)
                            .frame(maxWidth: 110)
                        TextField("", text: $login)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(maxWidth: 150)
                    }
                    HStack {
                        Text("Password:")
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: 110)
                        TextField("", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(maxWidth: 150)
                    }
                    Button(action: {shwoAlert = true}) {
                        Text("Log In")
                            .font(.system(size: 25))
                    }
                    .padding(.top, 20)
                    .disabled(login.isEmpty || password.isEmpty)
                    .alert("Welcome", isPresented: $shwoAlert) {
                        Button("OK", role: .cancel) {
                            print ("Login: \(login)\nPassword: \(password)")
                        }
                    }
                    Spacer()
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
