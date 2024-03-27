//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 23/03/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      NavigationBar()
        .padding(.horizontal, 15)
      
      
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          OrderTypeGridView()
          CarouselTabView()
        }
      }
    }
  }
}

#Preview() {
  ContentView()
}
