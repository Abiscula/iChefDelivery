//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 28/04/24.
//

import Foundation

struct HomeService {
    
    func fetchData() {
        guard let url = URL(string: "https://private-425152-chefdelivery11.apiary-mock.com/home") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let storeObjects = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storeObjects)
            }
        }.resume()
    }
    
}
