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
        Text("Choose Who To Chat With")
            .font(.system(size: 30))
        List(people, id: \.self) { people in
            Button {
                chattingWith = people
            } label: {
                Text(people)
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
