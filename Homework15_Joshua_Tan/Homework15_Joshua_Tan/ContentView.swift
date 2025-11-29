//
//  ContentView.swift
//  Homework15_Joshua_Tan
//
//  Created by Joshua Tan on 2025/11/26.
//

import SwiftUI

struct ColorButton: View {
    @Binding var globeColor: Color
    let colorName: String
    let color: Color
    
    var body: some View {
        Button {
            globeColor = color
        } label: {
            if globeColor == color {
                Label(colorName, systemImage: "checkmark.circle.fill")
                    .tint(color)
            }
            else {
                Label(colorName, systemImage: "circle.fill")
                    .tint(color)
            }
        }
    }
}

struct ColorMenu: ViewModifier {
    @Binding var globeColor: Color
    
    func body(content: Content) -> some View {
        content
            .contextMenu {
                ColorButton(globeColor: $globeColor, colorName: "Red", color: Color.red)
                ColorButton(globeColor: $globeColor, colorName: "Green", color: Color.green)
                ColorButton(globeColor: $globeColor, colorName: "Blue", color: Color.blue)
                ColorButton(globeColor: $globeColor, colorName: "Yellow", color: Color.yellow)
            }
    }
}

struct CaptionButton: View {
    @Binding var captionContent: String
    let caption: String
    
    var body: some View {
        Button {
            captionContent = caption
        } label: {
            if captionContent == caption {
                Label(caption, systemImage: "checkmark.circle")
            }
            else {
                Label(caption, systemImage: "circle")
            }
        }
    }
}

struct CaptionMenu: ViewModifier {
    @Binding var captionContent: String
    
    func body(content: Content) -> some View {
        content
            .contextMenu {
                CaptionButton(captionContent: $captionContent, caption: "Smile!")
                CaptionButton(captionContent: $captionContent, caption:  "Goodbye!")
                CaptionButton(captionContent: $captionContent, caption: "Maybe later...")
                CaptionButton(captionContent: $captionContent, caption: "Hello, world!")
            }
    }
}


struct ContentView: View {
    @State private var globeColor = Color.blue
    @State private var captionContent = "Hello, world!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(globeColor)
                .modifier(ColorMenu(globeColor: $globeColor))
            Text(captionContent)
                .modifier(CaptionMenu(captionContent: $captionContent))
        }
    }
}

#Preview {
    ContentView()
}
