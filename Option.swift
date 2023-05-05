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
                    Signup()
                }
                .frame(width: 200, height: 100)
                .background(.gray)
                .foregroundColor(.black)
                .font(.custom("American Typewriter", size: 25))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                
                NavigationLink("Sign In") {
                    //SignIn()
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
//            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}
