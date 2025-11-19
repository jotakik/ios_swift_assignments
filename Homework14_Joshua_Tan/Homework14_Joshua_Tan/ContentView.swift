//
//  ContentView.swift
//  Homework14_Joshua_Tan
//
//  Created by Joshua Tan on 2025/11/19.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1.0
    @GestureState private var pinchScale: CGFloat = 1.0
    @GestureState private var dragScale: CGFloat = 1.0
    
    let minScale: CGFloat = 0.3
    let maxScale: CGFloat = 3.0
    let dragDivisor: CGFloat = 300
    
    var body: some View {
        let pinch = MagnificationGesture()
            .updating($pinchScale) { value, state, _ in
                let factor = max(minScale, min(maxScale, value))
                state = factor
//                state = value
            }
            .onEnded { value in
                if value > 1 {
                    if scale * value > maxScale {
                        scale = maxScale
                    }
                    else {
                        scale *= value
                    }
                }
            }
        
        let drag = DragGesture()
            .updating($dragScale) { value, state, _ in
                let delta = -value.translation.height
                var factor = 1 + (delta / dragDivisor)
                factor = max(minScale, min(maxScale, factor))
                state = factor
            }
            .onEnded { value in
                let delta = -value.translation.height
                let factor = 1 + (delta / dragDivisor)
                if factor < 1 {
                    if scale * factor < minScale {
                        scale = minScale
                    }
                    else {
                        scale *= factor
                    }
                }
            }
         
        
        VStack(spacing: 16) {
            Text("Pinch to zoom in, drag down to shrink")
                .font(.headline)
            Image("antarctic_peninsula")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(scale * pinchScale * dragScale)
                .gesture(pinch)
                .simultaneousGesture(drag)
                .padding()
        }
        .padding()
        
//        VStack(spacing: 16) {
//            Text("Pinch to zoom in, drag down to shrink")
//                .font(.headline)
//            
//            ZStack(alignment: .topLeading) {
//                Image("antarctic_peninsula")
//                    .resizable()
//                    .scaledToFit()
//                    .scaleEffect(scale * pinchScale * dragScale)
//                    .gesture(pinch)
//                    .simultaneousGesture(drag)
//                    .padding()
//                
//                // MARK: - Debug Overlay
//                VStack(alignment: .leading, spacing: 4) {
//                    Text("Debug")
//                        .font(.caption).bold()
//                    Text(String(format: "scale     = %.2f", scale))
//                    Text(String(format: "pinchScale = %.2f", pinchScale))
//                    Text(String(format: "dragScale  = %.2f", dragScale))
//                    Text(String(format: "effective = %.2f",
//                                scale * pinchScale * dragScale))
//                }
//                .font(.caption2)
//                .padding(8)
//                .background(.black.opacity(0.6))
//                .foregroundColor(.white)
//                .cornerRadius(8)
//                .padding()
//            }
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
