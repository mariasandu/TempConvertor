//
//  ContentView.swift
//  TempConvertor
//
//  Created by Maria Sandu on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var baseTemp = 0.0
    @State private var scaleSelection = "Celsius"
    @FocusState private var tempIsFocused: Bool
    
    let tempScale = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Temperature", value: $baseTemp, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($tempIsFocused)
                
                Section {
                    
                    Picker("Initial scale", selection: $scaleSelection) {
                        ForEach(tempScale, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select the initial scale")
                }
            }
        }
    }
    
}
    
  





    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

