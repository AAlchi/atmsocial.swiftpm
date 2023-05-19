//
//  Home.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 4/28/23.
//

import SwiftUI
import FirebaseCore
import FirebaseDatabase
struct Chat: Hashable {
    let id = UUID()
    let dateSent: String
    let receiver: String
    let sender: String
    let text: String
    let type: String
}

struct Home: View {
    
    @State var chats: [Chat] = []
    @State var bool = false
    
    @AppStorage("displayName") var displayName = ""
    
    
    
    
    
    func loadDataFromFirebase() {
        let database = Database.database().reference()
        database.child("chats").observe(.value) { snapshot in
            
            chats.removeAll()
            
            if let snapShotArray = snapshot.children.allObjects as? [DataSnapshot] {
                for child in snapShotArray {
                    if let data = child.value as? [String: Any],
                       let text = data["text"] as? String,
                       let receiver = data["reciever"] as? String,
                       let dateSent = data["dateSent"] as? String,
                       let sender = data["sender"] as? String,
                       let type = data["type"] as? String {
                        
                        let chat = Chat(dateSent: dateSent, receiver: receiver, sender: sender, text: text, type: type)
                        
                        chats.append(chat)
                    }
                }
            }
            
            print("These are now the chats: \(chats)")
        }
    }
    
    
    
    
    //database
    let thedb = Database.database().reference()
    
    //normal code
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
                ScrollViewReader { proxy in
                    
                    ScrollView(){
                        Spacer()
                        VStack {
                            ForEach(chats, id: \.self) {messages in
                                HStack {
                                    if (messages.sender != displayName) {
                                        HStack {
                                            
                                            Text("\(date)")
                                            Text("\(messages.sender): \(messages.text)")
                                                .frame(width: geometry.size.width * 0.7)
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
                                            Text("\(messages.text) :You")
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
                            .onChange(of: chats) { _ in
                                 withAnimation {
                                    proxy.scrollTo(chats.last?.id, anchor: .bottom)
                                }
                            }
                            .padding()
                            Spacer()
                        }
                        .onAppear {
                             withAnimation {
                                proxy.scrollTo(chats.last?.id, anchor: .bottom)
                            }
                            loadDataFromFirebase()
                        }
                        .padding()
                        .onAppear {
                            loadDataFromFirebase()
                        }
                        .onAppear {
                             withAnimation {
                                proxy.scrollTo(chats.last?.id, anchor: .bottom)
                            }
                            loadDataFromFirebase()
                        }
                        
                        
                    }
                     
                    
                    
                    
                }
                HStack {
                    TextField("Chat Away", text: $message)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.3)
                        .font(.custom("American Typewriter", size: 20))
                        .textFieldStyle(.roundedBorder)
                    ZStack {
                        Button(action: {
                            let timedate = Date()
                            
                            
                            let allTheData = ["reciever": "\(chattingWith)", "sender": "\(displayName)", "text": "\(message)", "dateSent": "\(timedate)", "type": "1"]
                            
                            let newthedb = thedb.child("chats")
                            let newnewthedb = newthedb.childByAutoId()
                            newnewthedb.setValue(allTheData)
                            message = ""
                            
                        }, label: {
                            Image(systemName: "arrow.up")
                                .font(.system(size: geometry.size.width * 0.04))
                        })
                        .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06)
                        .background(.blue)
                        .cornerRadius(geometry.size.width * 1)
                        .foregroundColor(.white)
                        .padding()
                    }
                }
                
                
                
            }
        }
    }
    
}

