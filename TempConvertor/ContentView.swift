//
//  ContentView.swift
//  TempConvertor
//
//  Created by Maria Sandu on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var baseTemp: Double = 0.0
    @State private var scaleSelection = "Fahrenheit"
    @FocusState private var tempIsFocused: Bool
    
    let tempScale = ["Fahrenheit", "Kelvin"]
    
    var convertedTemp: Double {
        if scaleSelection == "Fahrenheit" {
            return baseTemp * 1.8 + 32
        }
        else {
            return baseTemp +  273.15
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    TextField("Temperature", value: $baseTemp, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($tempIsFocused)
                } header: {
                    Text("Celsius temperature")
                }
                
                Section {
                    Picker("Scale", selection: $scaleSelection) {
                        ForEach(tempScale, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select scale")
                }
                
                Section {
                    Text(convertedTemp, format: .number)
                } header: {
                    Text("Converted temperature from celsius")
                }
                
            }
            .navigationTitle("Temp Convertor")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()

                    Button("Done") {
                        tempIsFocused = false
                    }
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

