//
//  ContentView.swift
//  Homework13_Joshua_Tan
//
//  Created by Joshua Tan on 2025/11/8.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel: MemoryGameStore
    
    var body: some View {
        VStack {
            Text("Test Your Memory!")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
            GameBoard(viewModel: viewModel)
            ProgressView("Progress", value: viewModel.progress, total: 1.0)
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: MemoryGameStore())
}
