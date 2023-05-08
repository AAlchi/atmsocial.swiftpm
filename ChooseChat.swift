//
//  ChooseChat.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 5/4/23.
//

import SwiftUI

struct ChooseChat: View {
    @State private var people = ["Person 1", "Person 2", "Person 23"]
    
    @State var chattingWith = "Hello"
    
    var body: some View {
        HStack {
            Text("Friends")
                .font(.custom("American Typewriter", size: 35))
                .padding()
            Spacer()
            NavigationLink(destination: ContentView()
                .navigationBarBackButtonHidden(true)
            ) {
                Text("Log Out")
                    .frame(width: 200, height: 75)
                    .background(.gray)
                    .foregroundColor(.black)
                    .font(.custom("American Typewriter", size: 25))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }
        }
        List(people, id: \.self) { people in
            Button {
                chattingWith = people
            } label: {
                Text(people)
                    .font(.custom("American Typewriter", size: 25))
                    .foregroundColor(.black)
            }
            .frame(width: 100)
            .padding()
            .background(
                NavigationLink(destination: Home(chattingWith: chattingWith)) {
                    Text("")
                }
            )
        }
    }
}
