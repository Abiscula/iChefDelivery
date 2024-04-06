//
//  CircleView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 06/04/24.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let positionX: Double
    let positionY: Double
    let hasAnimating: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: hasAnimating ? 200 : 0)
            .position(x: positionX, y: positionY)
            .blur(radius: 60)
            .opacity(hasAnimating ? 0.5 : 0)
    }
}

#Preview {
    CircleView(color: Color("ColorRed"), positionX: 50.0, positionY: 100.0, hasAnimating: false)
}
