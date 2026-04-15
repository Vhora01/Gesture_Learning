//
//  Square.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct Square: View {
    let opacity : CGFloat
    
    init(opacity: CGFloat = 0.80) {
        self.opacity = opacity
    }
    var body: some View {
        Grid{
            SquareView(colors: [.red,.green,.blue])
            SquareView(colors: [.yellow,.indigo,.cyan])
            SquareView(colors: [.brown,.orange,.blue])
        }
        .opacity(opacity)
    }
}

#Preview {
    Square()
}
