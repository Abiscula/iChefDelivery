//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 24/03/24.
//

import SwiftUI

struct OrderTypeView: View {
    
    let orderType: OrderType
    
    var body: some View {
        VStack(spacing: 5) {
            Image(orderType.image)
                .resizable() // usado para indicar que a imagem pode ser redimensionada
                .scaledToFit() // usado para dimensionar a imagem para caber dentro do espaço disponível
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            Text(orderType.name)
                .font(.system(size: 10))
        }
        .frame(width: 70, height: 100)
    }
}

#Preview("OrderTypeView", traits: .sizeThatFitsLayout) {
    OrderTypeView(orderType: OrderType(id: 1, name: "Restaurantes", image: "hamburguer"))
}
