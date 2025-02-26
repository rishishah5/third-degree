//
//  ContentView.swift
//  Third-Degree
//
//  Created by Rishi Shah on 2/25/25.
//

import SwiftUI
import SwiftData



struct ContentView: View {
    var body: some View {
        NavigationView {
            LoginView()
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
