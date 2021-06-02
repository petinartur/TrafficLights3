//
//  ContentView.swift
//  TrafficLights3
//
//  Created by Артур Петин on 01.06.2021.
//

import SwiftUI
enum Currentlight {
    case red, yellow, green
}
struct ContentView: View {
    @State private var button = "Start"
    @State private var redOpacity: Double = 0.3
    @State private var yellowOpacity: Double = 0.3
    @State private var greenOpacity: Double = 0.3
    
    @State private var currentLight = Currentlight.red
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack{
                ColorCircle(color: .red, opacity: redOpacity)
                ColorCircle(color: .yellow, opacity: yellowOpacity)
                ColorCircle(color: .green, opacity: greenOpacity)
                Spacer()
                Button(action: {
                    if button == "Start" {
                        button = "Next"
                    }
                    
                    switch currentLight{
                    case .red:
                        greenOpacity = 0.3
                        redOpacity = 1
                        currentLight = .yellow
                    case .yellow:
                        redOpacity = 0.3
                        yellowOpacity = 1
                        currentLight = .green
                    case .green:
                        greenOpacity = 1
                        yellowOpacity = 0.3
                        currentLight = .red
                    }
                }) {
                    Text(button)
                        .frame(minWidth: 50, maxWidth: .infinity, minHeight: 44)
                        .font(.title)
                        .border(Color.blue)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .padding()
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
