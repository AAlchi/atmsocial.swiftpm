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
                Text("Sign Up")
                    .font(.system(size: 60))
                VStack {
                    TextField("Enter Username", text: $username)
                        .font(.system(size: 30))
                        .frame(width: 500)
                        .textFieldStyle(.roundedBorder)
                    
                    
                }
                .padding()
                
                VStack {
                    
                    TextField("Enter Full Name", text: $fullName)
                        .font(.system(size: 30))
                        .frame(width: 500)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                VStack {
                    TextField("Enter Email", text: $email)
                        .font(.system(size: 30))
                        .frame(width: 500)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                VStack {
                    SecureField("Enter Password", text: $password)
                        .font(.system(size: 30))
                        .frame(width: 500)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                
                NavigationLink(destination: Home()
                    .navigationBarBackButtonHidden(true)
                ) {
                    Text("Sign Up")
                        .frame(width: 200, height: 75)
                        .background(.blue)
                        .foregroundColor(.black)
                        .font(.custom("Times New Roman", size: 30))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                
            }
            
            
            
        }
}
