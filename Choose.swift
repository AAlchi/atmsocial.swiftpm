//
//  Choose.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 4/27/23.
//

import SwiftUI
 
struct Choose: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Choose")
                    .font(.system(size: 50))
                NavigationLink("Sign Up") {
                    Signup()
                }
                .frame(width: 600, height: 200)
                .background(.blue)
                .foregroundColor(.black)
                .font(.custom("American Typewriter", size: 25))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                NavigationLink("Sign In") {
                    //SignIn
                }
                .frame(width: 600, height: 200)
                .background(.blue)
                .foregroundColor(.black)
                .font(.custom("American Typewriter", size: 25))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            }
            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}
