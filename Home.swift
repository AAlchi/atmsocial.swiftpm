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
    

    @State var chattingWith:String
    
    var body: some View {
        VStack {
            HStack {
                Text("Chatting with \(chattingWith)")
                    .font(.system(size: 40))
                    .padding()
                Spacer()
            }
            Divider()
            ScrollView(){
                Spacer()
                VStack {
                    ForEach(allMessagesTwo) {messages in
                        HStack {
                            if (messages.type == "one") {
                                Text("\(message)")
                                    .frame(width: 500)
                                    .padding()
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .background(Color.green)
                                    .cornerRadius(20)
                                Spacer()
                            } else {
                                Spacer()
                                Text("\(message)")
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
                    
                    let sendingItem = ChatFunction(reciever: "You", sender: chattingWith, text: message, dateSent: timedate, type:"two")
                    
                    allMessagesTwo.append(sendingItem)
                    
                    message = ""
                }
                .frame(width: 100)
                .padding()
                .border(Color.black)
                .cornerRadius(5)
            }
            .padding()
            
            Button("Send Other") {
                let timedate = Date()
                
                let sendingItem = ChatFunction(reciever: chattingWith, sender: "You", text: message, dateSent: timedate, type:"one")
                
                allMessagesTwo.append(sendingItem)
                
                message = ""
            }
            .frame(width: 100)
            .padding()
            .border(Color.black)
            .cornerRadius(5)
        }
    }
}
