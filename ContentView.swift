import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello")
            }
            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}

