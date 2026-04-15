//
//  GradientBackgroundView.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct GradientBackgroundView : View {
    let colors : [Color]
    let opacity :CGFloat
    init(colors: [Color], opacity: CGFloat = 1) {
        self.colors = colors
        self.opacity = opacity
    }
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomLeading)
            .opacity(opacity)
            .ignoresSafeArea()
        
    }
}

#Preview {
    GradientBackgroundView(colors: [.red,.green,.blue], opacity: 0.5)
}
