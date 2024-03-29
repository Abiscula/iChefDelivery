//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 26/03/24.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}

#Preview("CarouselItemView", traits: .sizeThatFitsLayout) {
    CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
        .padding()
}
