//
//  Signup.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 4/24/23.
//

import SwiftUI

struct Signup: View {
    @State var username = ""
    @State var fullName = ""
    @State var email = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Text("ATM Social | Sign Up")
                .font(.system(size: 50))
            Divider()
            
            Text("Username")
                .font(.system(size: 30))
            
            TextField("", text: $username)
                .font(.system(size: 20))
                .textFieldStyle(.roundedBorder)
                .padding()
                .padding()
                .padding()
                .frame(width: 900)
            
            Text("Full Name")
                .font(.system(size: 30))
            
            TextField("", text: $fullName)
                .font(.system(size: 20))
                .textFieldStyle(.roundedBorder)
                .padding()
                .padding()
                .padding()
                .frame(width: 900)

            
            Text("Email")
                .font(.system(size: 30))
            
            TextField("", text: $email)
                .font(.system(size: 20))
                .textFieldStyle(.roundedBorder)
                .padding()
                .padding()
                .padding()
                .frame(width: 900)


            Text("Password")
                .font(.system(size: 30))
            
            SecureField("", text: $password)
                .font(.system(size: 20))
                .textFieldStyle(.roundedBorder)
                .padding()
                .padding()
                .padding()
                .frame(width: 900)

            
         

        }
        Button("Sign Up") {
            Text("Hi")
        }
        .padding()
        .border(.blue)
        .foregroundColor(.blue)
    }
}
