//
//  ContentView.swift
//  Instagram-Login
//
//  Created by Elias Breitenbach on 24.05.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
//            Bild
            Image("defaultProfil").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 1))
            
//            Text
            Text("Foto App").font(Font.title).padding(.bottom)
            
//            TextField
            TextField("Email", text: $email).padding().textFieldStyle(RoundedBorderTextFieldStyle())
            
//            SecureField
            SecureField("Password", text: $password).padding().textFieldStyle(RoundedBorderTextFieldStyle())
            
//            Login Button
//            () -> Void -> Closure -> Was ist das? Das ist ein Code Block!! in geschweifter klammer {  }
            Button(action: {}, label: {
                HStack {
                    Spacer()
                    Text("Login").fontWeight(.bold).foregroundColor(.white)
                    Spacer()
                }
            }).padding().background(Color.black).cornerRadius(10).shadow(color: Color.green, radius: 4, x: 0, y: 0).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
