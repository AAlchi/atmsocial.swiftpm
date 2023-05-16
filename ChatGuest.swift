//
//  ChatGuest.swift
//  ATM Social
//
//  Created by Thomas Niezyniecki on 5/11/23.
//

import SwiftUI

struct ChatGuest: View {
    @State var displayName = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Text("Create Profile")
                        .font(.system(size: geometry.size.width * 0.1))
                        .padding()
                }
                Divider()
                HStack {
                    Text("Choose a Display Name")
                        .font(.system(size: geometry.size.width * 0.05))
                        .padding()
                }
                HStack {
                    TextField("", text: $displayName)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                }
                HStack {
                    Button("Start Chatting") {
                        
                    }
                    .background(
                        NavigationLink("Start Chatting", destination: {
                            ChooseChat()
                        })
                        .navigationBarBackButtonHidden(true)
                    )
                   
                }
            }
        }
    }
}


