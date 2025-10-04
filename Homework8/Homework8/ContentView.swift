//
//  ContentView.swift
//  Homework 8
//
//  Created by Joshua Tan on 2025/10/3.
//  Added all the meal courses and menu items to Food, along with
//  sublists containing images, prices, dietary restrictions, and
//  descriptions.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Image(systemName: "car.fill")
                    Text("Cars")
                }
                HStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                HStack {
                    Image(systemName: "figure.run")
                    Text("Fitness")
                }
                NavigationLink(destination: Food()) {
                    HStack {
                        Image(systemName: "fork.knife")
                        Text("Food")
                    }
                }
            }.navigationTitle("Menu")
        }
    }
}

#Preview {
    ContentView()
}
