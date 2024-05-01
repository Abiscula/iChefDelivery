//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 28/04/24.
//

import Foundation

enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String)
}

struct HomeService {
    
    func fetchData() async throws -> Result<[StoreType], RequestError> {
        guard let url = URL(string: "https://private-425152-chefdelivery11.apiary-mock.com/home") else {
            return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod =  "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storeObjects = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storeObjects)
    }
    
}
