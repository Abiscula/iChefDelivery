//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 29/03/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    @State private var minDistance: Double = 0
    @State private var maxDistance: Double = 25
    
    var stores: [StoreType]
    
    var filteredStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter && (store.distance > minDistance && store.distance < maxDistance)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Estrelas") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            Text("\(rating) estrela\(rating > 1 ? "s": "") ou mais")
                        }
                    }
                }
                .foregroundColor(.black)
                
                
                Menu("Distância") {
                    
                    Button {
                        minDistance = 0
                        maxDistance = 25
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(Array(stride(from: 0, to: 25, by: 5)), id: \.self) { distance in
                        Button {
                            minDistance = Double(distance)
                            maxDistance = Double(distance + 5)
                        } label: {
                            Text("De \(distance) até \(distance + 5) km")
                        }
                    }
                }
                .foregroundColor(.black)
            }

            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview("StoresContainerView", traits: .sizeThatFitsLayout) {
    StoresContainerView(stores: storesMock)
}
