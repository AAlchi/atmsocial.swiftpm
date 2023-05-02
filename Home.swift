//
//  Home.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 4/28/23.
//

import SwiftUI

struct Home: View {
    @State var message = ""
    
    
    @State private var allMessagesOne = ["Hi!", "How Are You Today?", "Hi!", "How Are You Today?", "Hi!", "How Are You Today?"]
    @State private var allMessagesTwo = ["one": "Hey.", "two": "I'm Fine Thank you.", "two": "Hi!", "one": "How Are You Today?", "two": "Hi!", "one":  "How Are You Today?"]
    
    var body: some View {
        VStack {
            HStack {
                
                Text("Chatting with ATM")
                    .font(.system(size: 40))
                    .padding()
                Spacer()
            }
            Divider()
            ScrollView(){
                Spacer()
                VStack {
                    ForEach(allMessagesTwo, id: \.self) {messages in
                        HStack {
                            Text(messages)
                                .frame(width: 500)
                                .padding()
                                .font(.system(size: 20))
                                .foregroundColor(Color.white)
                                .background(Color.green)
                                .cornerRadius(20)
                            Spacer()
                            
                        }
                        
                    }
                    
                    Spacer()
                }
                .padding()
                
                
                
                
            }
            
            
            
            
            HStack {
                TextField("Chat Away", text: $message)
                    .frame(width: 800)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                Button("Send") {
                    
                }
                .frame(width: 100)
                .padding()
                .border(Color.black)
                .cornerRadius(5)
            }
            .padding()
            
            
        }
        
    }
    
    
}
