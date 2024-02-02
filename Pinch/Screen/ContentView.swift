//
//  ContentView.swift
//  Pinch
//
//  Created by Mustafa TAVASLI on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: PROPERTY
    
    @State private var isAnimating : Bool = false
    @State private var imageScale : CGFloat = 1
    
    // MARK: FUNCTION
    
    
    // MARK: CONTENT
    
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                    // MARK: 1. TAP GESTURE
                    // Iki kere basildiginda imageScale 1 ise 5 olur; 1 degilse default ayarina doner.
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        }
                        else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    })
            }
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            })
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
