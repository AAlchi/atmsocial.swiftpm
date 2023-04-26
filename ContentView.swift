import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Signup()
        NavigationView {
            VStack {
                Text("Hello")
            }
            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}

