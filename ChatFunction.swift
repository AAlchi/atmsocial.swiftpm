//
//  ChatFunction.swift
//  atmsocial
//
//  Created by Ali Alchikh Ibrahim on 5/2/23.
//

import SwiftUI
import Foundation
import FirebaseDatabase
import FirebaseCore


struct ChatFunction: Identifiable {
    let id = UUID()
    let reciever: String
    let sender: String
    let text: String
    let dateSent: Date
    let type: String
}


//ChatGPT code that  should work but IDK:
//import SwiftUI
//import FirebaseCore
//import FirebaseDatabase
//
//struct ChatFunction: Identifiable {
//    let id: UUID
//    let receiver: String
//    let sender: String
//    let text: String
//    let dateSent: Date
//    let type: String
//}
//
//class FirebaseDataManager {
//    static let shared = FirebaseDataManager()
//    let databaseRef = Database.database().reference()
//    let callsegRef = Database.database().reference().child("chats")
//
//    func fetchChatFunctions(completion: @escaping ([ChatFunction]) -> Void) {
//        var chatFunctions = [ChatFunction]()
//        callsegRef.observeSingleEvent(of: .value) { snapshot in
//            for child in snapshot.children {
//                if let childSnapshot = child as? DataSnapshot,
//                   let chatFunctionData = childSnapshot.value as? [String: Any] {
//                    if let idString = chatFunctionData["id"] as? String,
//                       let id = UUID(uuidString: idString),
//                       let receiver = chatFunctionData["receiver"] as? String,
//                       let sender = chatFunctionData["sender"] as? String,
//                       let text = chatFunctionData["text"] as? String,
//                       let dateString = chatFunctionData["dateSent"] as? String,
//                       let dateSent = ISO8601DateFormatter().date(from: dateString),
//                       let type = chatFunctionData["type"] as? String {
//                        let chatFunction = ChatFunction(id: id, receiver: receiver, sender: sender, text: text, dateSent: dateSent, type: type)
//                        chatFunctions.append(chatFunction)
//                    }
//                }
//            }
//            completion(chatFunctions)
//        }
//    }
//}

