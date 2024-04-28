//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 23/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                    .padding(.horizontal, 15)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            fetchData()
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://private-425152-chefdelivery11.apiary-mock.com/questions") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]]
                    print(json)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

#Preview() {
    ContentView()
}
