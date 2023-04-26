import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Signup()
            }
            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}

