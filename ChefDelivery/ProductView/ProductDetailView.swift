//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 30/03/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        Text(product.name)
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
