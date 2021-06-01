//
//  ColorCircle.swift
//  TrafficLights3
//
//  Created by Артур Петин on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
            
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .blue, opacity: 0.5)
        
    }
}
