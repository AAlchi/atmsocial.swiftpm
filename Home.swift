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
    @State var date = ""
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Text("Chatting with \(chattingWith)")
                        .font(.custom("American Typewriter", size: 25))
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
                                    HStack {
                                        
                                        Text("\(date)")
                                        Text("\(messages.text)")
                                            .frame(width: 500)
                                            .padding()
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                                            .background(Color.green)
                                            .cornerRadius(20)
                                            .gesture(
                                                DragGesture()
                                                    .onEnded { action in
                                                        withAnimation {
                                                            
                                                            if action.translation.width > 0 {
                                                                date = "Date: \(messages.dateSent)"
                                                            } else {
                                                                date = ""
                                                            }
                                                        }
                                                        
                                                    }
                                            )
                                        
                                    }
                                    .padding()
                                    Spacer()
                                } else {
                                    HStack {
                                        Spacer()
                                        Text("\(messages.text)")
                                            .frame(width: 500)
                                            .padding()
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                                            .background(Color.blue)
                                            .cornerRadius(20)
                                            .gesture(
                                                DragGesture()
                                                    .onEnded { action in
                                                        withAnimation {
                                                            
                                                            
                                                            if action.translation.width < 0 {
                                                                date = "Date: \(messages.dateSent)"
                                                            } else {
                                                                date = ""
                                                            }
                                                        }
                                                    }
                                            )
                                        Text("\(date)")
                                        
                                    }
                                    
                                    
                                }
                            }
                        }
                        .padding()
                        Spacer()
                    }
                    .padding()
                }
                HStack {
                    TextField("Chat Away", text: $message)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.3)
                        .textFieldStyle(.roundedBorder)
                    ZStack {
                        Button(action: {
                            let timedate = Date()
                            let sendingItem = ChatFunction(reciever: "You", sender: chattingWith, text: message, dateSent: timedate, type:"two")
                            allMessagesTwo.append(sendingItem)
                            message = ""
                        }, label: {
                            Image(systemName: "arrow.up")
                                .font(.system(size: geometry.size.width * 0.04))
                        })
                        .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06)
                        .background(.blue)
                        .cornerRadius(geometry.size.width * 1)
                        .foregroundColor(.white)
                    }
                }
                Button("Send Other") {
                    let timedate = Date()
                    let sendingItem = ChatFunction(reciever: chattingWith, sender: "You", text: message, dateSent: timedate, type:"one")
                    allMessagesTwo.append(sendingItem)
                    message = ""
                }
                .frame(width: geometry.size.width * 0.2, height: geometry.size.height * 0.02)
                .padding()
                .background(.blue)
                .foregroundColor(.black)
                .cornerRadius(5)
            }
        }
    }
}
