import SwiftUI

struct ContentView: View {
    @State var showingOptionView = false
    var body: some View {
        Button("Choose an option") {
            showingOptionView = true
        }
        .frame(width: 100, height: 50)
        .foregroundColor(.black)
        .background(.gray)
        .sheet(isPresented: $showingOptionView) {
            Option()
        }
    }
}

 
