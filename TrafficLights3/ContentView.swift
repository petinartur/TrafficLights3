//
//  ContentView.swift
//  TrafficLights3
//
//  Created by Артур Петин on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var button = "Start"
    @State private var lightIsOn: Double = 1
    @State private var lightIsOff: Double = 0.3
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack{
                ColorCircle(color: .red, opacity: lightIsOff)
                ColorCircle(color: .yellow, opacity: lightIsOff)
                ColorCircle(color: .green, opacity: lightIsOff)
                Spacer()
                Button(action: {
                        button = "Next"
                        
                }) {
                    Text(button)
                        .font(.title)
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
