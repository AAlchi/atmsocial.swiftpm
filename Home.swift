//
//  Home.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 4/28/23.
//

import SwiftUI

struct Home: View {
    @State var message = ""
    @State private var allMessagesTwo: [ChatFunction] = []
    
    var body: some View {
        VStack {
            HStack {
                
                Text("Chatting with ATM")
                    .font(.system(size: 40))
                    .padding()
                Spacer()
                Button("Change") {
                    
                }
                .frame(width: 100)
                .padding()
                .border(Color.black)
                .cornerRadius(5)
            }
            Divider()
            ScrollView(){
                Spacer()
                VStack {
                    ForEach(allMessagesTwo) {messages in
                        HStack {
                            if (messages.type == "one") {
                                Text("\(messages.text)")
                                    .frame(width: 500)
                                    .padding()
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .background(Color.green)
                                    .cornerRadius(20)
                                Spacer()
                            } else {
                                Spacer()
                                Text("\(messages.text)")
                                    .frame(width: 500)
                                    .padding()
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .background(Color.blue)
                                    .cornerRadius(20)
                            }
                            
                            
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
                    let timedate = Date()
                    
                    let sendingItem = ChatFunction(reciever: "John", sender: "You", text: message, dateSent: timedate, type:"one")
                    
                    allMessagesTwo.append(sendingItem)
                    
                    message = ""
                }
                .frame(width: 100)
                .padding()
                .border(Color.black)
                .cornerRadius(5)
                
                Button("Send Two") {
                    let timedate = Date()
                    
                    let sendingItem = ChatFunction(reciever: "You", sender: "John", text: message, dateSent: timedate, type:"two")
                    
                    allMessagesTwo.append(sendingItem)
                    
                    message = ""
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
