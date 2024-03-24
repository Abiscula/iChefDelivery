//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 23/03/24.
//

import SwiftUI

struct OrderTypeGridView: View {
  
  var body: some View {
    
    LazyHGrid(rows: [
      GridItem(.fixed(100)),
      GridItem(.fixed(100))
    ], content: {
      ForEach(ordersMock) { ordemItem in
        Text(ordemItem.name)
      }
    })
    
  }
}

#Preview("OrderTypeGridView") {
    OrderTypeGridView()
}
