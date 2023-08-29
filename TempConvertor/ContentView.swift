//
//  ContentView.swift
//  TempConvertor
//
//  Created by Maria Sandu on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    let scales = ["Celsius", "Fahrenheit", "Kelvin"]

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
