import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Signup()
                Text("Hello")
            }
            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}

