//
//  HomeView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 06/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    @State private var imageOfsset: CGSize = .zero
    @State private var showSecondScreen: Bool = false
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                
                CircleView(
                    color: Color("ColorRed"),
                    positionX: isAnimating ? 50 : -50,
                    positionY: isAnimating ? 100 : -100,
                    hasAnimating: isAnimating)
                
                CircleView(
                    color: Color("ColorRedDark"),
                    positionX: (isAnimating ? geometry.size.width - 50 : geometry.size.width + 50),
                    positionY: (isAnimating ? geometry.size.height - 50 : geometry.size.height + 50),
                    hasAnimating: isAnimating)
                
                
                VStack {
                    Text("Chef Delivery")
                        .font(.system(size: 48))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("ColorRed"))
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Text("Peça as suas comidas no conforto da sua casa.")
                        .font(.title2)
                        .padding()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black.opacity(0.7))
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Image("image")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 60)
                        .padding(isAnimating ? 32 : 92)
                        .opacity(isAnimating ? 1 : 0)
                        .offset(x: imageOfsset.width, y: imageOfsset.height)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOfsset = gesture.translation
                                    }
                                })
                                .onEnded({ _ in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOfsset = .zero
                                    }
                                })
                        )
                    
                    DragButtonView(showScreen: $showSecondScreen, hasAnimating: $isAnimating, geometryWidth: geometry.size.width)

                }
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        isAnimating = true
                    }
                }
            }
            .fullScreenCover(isPresented: $showSecondScreen, content: {
                ContentView()
            })
        }
    }
}

#Preview {
    HomeView()
}
