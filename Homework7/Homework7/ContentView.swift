//
//  ContentView.swift
//  Homework 7
//
//  Created by Joshua Tan on 9/29/25.
//

import SwiftUI

extension VerticalAlignment {
    enum MidPhotoTopIntro: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midPhotoTopIntro = VerticalAlignment(MidPhotoTopIntro.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midPhotoTopIntro){
            VStack {
                Image("profilePic")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                    .alignmentGuide(.midPhotoTopIntro) {d in d[VerticalAlignment.center]}
                
                Text("Joshua Tan")
                    .font(.title)
                    .fontDesign(.serif)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.black, .gray],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                
            }
                .containerRelativeFrame(.horizontal, count: 3, span: 1, spacing: 50, alignment: .leading)
                .padding()
                        
            VStack {
                let intro = "Hi! I'm Joshua, and I have a bachelor's degree in Computer Science. I am familiar with Python, Java, C++, C, and SQL. I am trying to find a role as a software engineer, and I think that as more and more people use their phone over their computer, developing good mobile apps is very important. I hope that I will learn to use Swift to build clients for web applications."
                
                Text(intro)
                    .font(.body)
                    .fontDesign(.serif)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.trailing)
                    .alignmentGuide(.midPhotoTopIntro) {d in d[.top]}
                
            }
                .containerRelativeFrame(.horizontal, count: 4, span: 2, spacing: 50, alignment: .leading)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
