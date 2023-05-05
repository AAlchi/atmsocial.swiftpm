import SwiftUI
import MongoSwift

struct ContentView: View {
    @State var showingOptionView = false
    
    @State var mongoClient = MongoClient
    
    init() {
        
        let stringToConnect = ""
        
        if let client = try? mongoClient(stringToConnect) {
            print("Succeeded")
        } else {
            print("Something Failed")
        }
        
    }
    
    var body: some View {
        Option()
    }
}


