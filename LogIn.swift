//
//  LogIn.swift
//  atmsocial
//
//  Created by Thomas Niezyniecki on 5/8/23.
//

import SwiftUI

struct LogIn: View {
    @State var username = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack {
            Text("Log In")
                .font(.custom("American Typewriter", size: 25))
            
            VStack {
                TextField("Enter Username", text: $username)
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
                Text("Log In")
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

