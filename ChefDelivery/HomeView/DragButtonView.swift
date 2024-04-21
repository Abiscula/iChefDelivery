//
//  DragButtonView.swift
//  ChefDelivery
//
//  Created by Victor Abiscula on 21/04/24.
//

import SwiftUI

struct DragButtonView: View {
    
    @State private var buttonOfsset: CGFloat = 0
    let buttonHeight: CGFloat = 80
    let geometryWidth: CGFloat
    
    
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color("ColorRed")).opacity(0.2)
            
            Capsule()
                .fill(Color("ColorRed")).opacity(0.2)
                .padding(8)
            
            Text("Descubra mais")
                .font(.title2)
                .bold()
                .foregroundColor(Color("ColorRedDark"))
                .offset(x: 20)
            
            HStack {
                Capsule()
                    .fill(Color("ColorRed"))
                    .frame(width: buttonOfsset + buttonHeight)
                
                Spacer()
            }
            
            HStack {
                ZStack {
                    Circle()
                        .fill(Color("ColorRed"))
                    
                    Circle()
                        .fill(Color("ColorRedDark"))
                        .padding(8)
                    
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .offset(x: buttonOfsset)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        
                        if(gesture.translation.width >= 0 && 
                           buttonOfsset <= (geometryWidth - 60) - buttonHeight) {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                buttonOfsset = gesture.translation.width
                            }
                        }
                        
                    })
                    .onEnded({ _ in
                        
                        if(buttonOfsset > (geometryWidth - 60) / 2) {
                            // navegar para proxima tela
                        } else {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                buttonOfsset = 0
                            }
                        }
                    })
            )
            

        }
        .frame(width: geometryWidth - 60, height: buttonHeight)
    }
}

#Preview {
    DragButtonView(geometryWidth: 400)
}
