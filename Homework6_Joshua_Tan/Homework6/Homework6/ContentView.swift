//
//  ContentView.swift
//  Homework 6
//
//  Created by Joshua Tan on 9/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("beautiful field").resizable().scaledToFit()
            VStack {
                HStack {
                    Image("Airedale Terrier").resizable().scaledToFit()
                    Image("American Foxhound").resizable().scaledToFit()
                    Image("Dutch Shepherd").resizable().scaledToFit()
                }.padding()
                HStack {
                    Image("Havanese").resizable().scaledToFit()
                    Image("Leonberger").resizable().scaledToFit()
                    Image("Mudi").resizable().scaledToFit()
                }.padding()
                HStack {
                    Image("Norwegian Lundehund").resizable().scaledToFit()
                    Image("Pharaoh Hound").resizable().scaledToFit()
                    Image("Scottish Terrier").resizable().scaledToFit()
                }.padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
