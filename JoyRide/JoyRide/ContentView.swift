//
//  ContentView.swift
//  JoyRide
//
//  Created by Sajid Shanta on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "car")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, JoyRide!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
