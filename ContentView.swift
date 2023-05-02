import SwiftUI

struct ContentView: View {
    @State var showingOptionView = false
    var body: some View {
        Button("Choose an option") {
            showingOptionView = true
        }
        .frame(width: 100, height: 50)
        .foregroundColor(.white)
        .background(.blue)
        .sheet(isPresented: $showingOptionView) {
            Option()
        }
    }
}

 
