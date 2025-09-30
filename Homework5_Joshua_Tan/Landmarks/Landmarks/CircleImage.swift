/*:
 # Homework 5
 
 Joshua Tan
 
 20250915
 */

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("profilePic")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage()
}
