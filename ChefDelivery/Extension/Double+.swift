//
//  Double+.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 30/03/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
