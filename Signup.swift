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
                    .font(.custom("American Typewriter", size: 35))
                VStack {
                    TextField("Enter Username", text: $username)
                        .font(.custom("American Typewriter", size: 25))
                        .frame(width: 600)
                        .textFieldStyle(.roundedBorder)
                    
                    
                }
                .padding()
                
                VStack {
                    
                    TextField("Enter Full Name", text: $fullName)
                        .font(.custom("American Typewriter", size: 25))
                        .frame(width: 600)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                VStack {
                    TextField("Enter Email", text: $email)
                        .font(.custom("American Typewriter", size: 25))
                        .frame(width: 600)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                VStack {
                    SecureField("Enter Password", text: $password)
                        .font(.custom("American Typewriter", size: 25))
                        .frame(width: 600)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                
                NavigationLink(destination: ChooseChat()
                    .navigationBarBackButtonHidden(true)
                ) {
                    Text("Sign Up")
                        .frame(width: 200, height: 75)
                        .background(.gray)
                        .foregroundColor(.black)
                        .font(.custom("American Typewriter", size: 25))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                
            }
            
            
            
        }
}
