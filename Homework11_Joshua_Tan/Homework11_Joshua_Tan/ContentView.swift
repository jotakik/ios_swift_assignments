//
//  ContentView.swift
//  Homework11_Joshua_Tan
//
//  Created by Joshua Tan on 2025/10/30.
//

import SwiftUI

struct Nativity: View {
    let title = "Nativity"
    let desc = "The word nativity is taken from the Latin nativus, which means “arisen by birth.” A nativity scene is a representation of the night of Jesus’ birth as depicted in the Gospels of Matthew and Luke. Nativities can be pictures, models, live demonstrations, or carvings, but they usually contain the same elements: the Christ Child in a manger; His mother, Mary; His earthly father, Joseph; shepherds; angels; various barn animals; a star; and, sometimes, three wise men bringing gifts. A nativity scene is most often set inside a stable or cave."

    
    var body: some View {
        ZStack {
            Image("nativity")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Text(title)
                    .font(.custom("Didot", size: 30))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .bold()
                Text(desc)
                    .font(.custom("Didot", size: 20))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .bold()
            }
        }
    }
}

struct ChristmasTree: View {
    let title = "Christmas Tree"
    let desc = "A Christmas tree is a decorated evergreen tree, often a fir, spruce, or pine, that is used as a centerpiece of Christmas celebrations. It is decorated with lights, ornaments, and a star or angel on top, and represents joy, togetherness, and ancient traditions of life and hope during winter. The practice has roots in pre-Christian winter solstice celebrations, was adopted and adapted by Christians in Germany, and later popularized in the U.S. and other countries."
    
    let creamColor = Color(red: 0.99, green: 0.98, blue: 0.83)
    
    var body: some View {
        ZStack {
            Image("christmastree")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Text(title)
                    .font(.custom("Didot", size: 30))
                    .multilineTextAlignment(.center)
                    .padding()
                    .bold()
                    .background(creamColor.opacity(0.7))
                Text(desc)
                    .font(.custom("Didot", size: 20))
                    .multilineTextAlignment(.center)
                    .padding()
                    .bold()
                    .background(creamColor.opacity(0.7))
            }
        }
    }
}

struct ChristmasPresents: View {
    let title = "Christmas Presents"
    let desc = "Christmas presents are gifts given to celebrate the Christmas holiday, symbolizing the gifts of gold, frankincense, and myrrh from the Three Wise Men to the baby Jesus. This tradition is a way to show love and appreciation, and has roots in ancient Roman festivals like Saturnalia, where gifts were exchanged to celebrate the winter solstice and give thanks."
    
    let creamColor = Color(red: 0.99, green: 0.98, blue: 0.83)
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("presents")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width: geo.size.width)
                VStack {
                    Text(title)
                        .font(.custom("Didot", size: 30))
                        .multilineTextAlignment(.center)
                        .padding()
                        .bold()
                        .background(creamColor.opacity(0.7))
                        .frame(maxWidth: geo.size.width)
                    Text(desc)
                        .font(.custom("Didot", size: 20))
                        .multilineTextAlignment(.center)
                        .padding()
                        .bold()
                        .background(creamColor.opacity(0.7))
                        .frame(maxWidth: geo.size.width)
                }
            }
        }
        
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            Nativity().tabItem {
                Image(systemName: "person.3")
            }
            ChristmasTree().tabItem {
                Image(systemName: "tree")
            }
            ChristmasPresents().tabItem {
                Image(systemName: "app.gift")
            }
        }
    }
}

#Preview {
    ContentView()
}
