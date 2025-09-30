/*:
 # Homework 5
 
 Joshua Tan
 
 20250915
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello, Joshua!\n")
                .font(.title)
                .fontDesign(.serif)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.black, .gray],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            
            CircleImage()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
