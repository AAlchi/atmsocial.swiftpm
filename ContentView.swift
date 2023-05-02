import SwiftUI

struct ContentView: View {
    @State var showingSignInPage =  true
    var body: some View {
        
        NavigationView {
//            VStack {
                Home()
//                NavigationLink("Sign Up") {
//                    ()
//                }
//                .frame(width: 200, height: 100)
//                .background(.blue)
//                .foregroundColor(.black)
//                .font(.custom("American Typewriter", size: 25))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .padding()
//                NavigationLink("Sign In") {
//                    //SignIn
//                }
//                .frame(width: 200, height: 100)
//                .background(.blue)
//                .foregroundColor(.black)
//                .font(.custom("American Typewriter", size: 25))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .padding()
//            }
//            .navigationTitle("ATM Social")
//            .sheet(isPresented: $showingSignInPage) {
//
//            }
        }
        .navigationViewStyle(.stack)
    }
}

 
