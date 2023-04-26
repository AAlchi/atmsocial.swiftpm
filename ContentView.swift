import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Logout()
            }
            .navigationTitle("ATM Social")
        }
        .navigationViewStyle(.stack)
    }
}

