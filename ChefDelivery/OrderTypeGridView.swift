//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 23/03/24.
//

import SwiftUI

struct OrderTypeGridView: View {
  
  let  orders = ["Restaurantes", "Farmácia", "Descontos", "Gourmet", "Mercados" , "Pet", "Bebidas"]
  
  var body: some View {
    
    LazyHGrid(rows: [
      GridItem(.fixed(100)),
      GridItem(.fixed(100))
    ], content: {
      ForEach(orders, id: \.self) { ordemItem in
        Text(ordemItem)
      }
    })
    
  }
}

#Preview("OrderTypeGridView") {
    OrderTypeGridView()
}
