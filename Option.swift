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
        
        NavigationView {
            VStack {
                NavigationLink("Sign Up") {
                    SignUp()
                }
                .frame(width: 200, height: 100)
                .background(.gray)
                .foregroundColor(.black)
                .font(.custom("American Typewriter", size: 25))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                
                NavigationLink("Log In") {
                    LogIn()
                }
                .frame(width: 200, height: 100)
                .background(.gray)
                .foregroundColor(.black)
                .font(.custom("American Typewriter", size: 25))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            VStack {
                                Text("ATM Social")
                                    .font(.custom("American Typewriter", size: 75))
                                    .foregroundColor(.black)
                            }
                        }
                    }
            }
        }
        .navigationViewStyle(.stack)
    }
}
