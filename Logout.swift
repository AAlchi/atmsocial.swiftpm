//
//  Logout.swift
//  atmsocial
//
//  Created by Matthew Kao on 4/26/23.
//

import Foundation
import SwiftUI

struct Logout: View {
    @State private var showingAlert = false
    var body: some View {
                Button("Log out") {
                    showingAlert = true
                }
                .frame(width: 150, height: 50)
                .background(.blue)
                .foregroundColor(.black)
                .font(.custom("American Typewriter", size: 30))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                .alert("Are you sure you want to log out?", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
            }
}
