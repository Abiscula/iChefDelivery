//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 23/03/24.
//

import SwiftUI

struct NavigationBar: View {
  var body: some View {
    HStack {
      Spacer() // adc espaco
      
      Button("R. Vergueiro, 3185") {
        
      }
      .font(.subheadline)
      .fontWeight(.semibold)
      .foregroundColor(.black)
      
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
        Image(systemName: "bell.badge")
      }
      .font(.title3)
      .foregroundColor(.red)
      
    }
  }
}

#Preview("NavigationBar", traits: .sizeThatFitsLayout) {
  NavigationBar()
    .padding()
}
