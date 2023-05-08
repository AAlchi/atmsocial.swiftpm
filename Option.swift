//
//  Option.swift
//  atmsocial
//
//  Created by Thomas Niezyniecki on 4/28/23.
//

import SwiftUI

struct Option: View {
    @State private var isShowingOptionView = true
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    Text("ATM Social")
                        .font(.custom("American Typewriter", size: 75))
                        .foregroundColor(.black)
                        .padding()
                    Image("ATM-Logo")
                        .resizable()
                        .scaleEffect(0.5)
                    NavigationLink("Sign Up") {
                        SignUp()
                    }
                    .frame(width: 250, height: 100)
                    .background(.gray)
                    .foregroundColor(.black)
                    .font(.custom("American Typewriter", size: 25))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    NavigationLink("Log In") {
                        LogIn()
                    }
                    .frame(width: 250, height: 100)
                    .background(.gray)
                    .foregroundColor(.black)
                    .font(.custom("American Typewriter", size: 25))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                }
            }
            .navigationViewStyle(.stack)
        }
    }
}
