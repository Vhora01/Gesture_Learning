//
//  SquareView.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct SquareView : View {
    let colors: [Color]
    let dim:CGFloat
    let cornerRadius : CGFloat
    init(colors: [Color], dim: CGFloat = 50,cornerRadius :CGFloat = 20) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    var body: some View {
        GridRow {
            ForEach(colors,id: \.self){ color in
//                color
//                    .frame(width: dim,height: dim)
//                    .cornerRadius(cornerRadius)
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(color)
                    .frame(width: dim,height: dim)
            }
        }
    }
}

#Preview {
    ZStack {
        GradientBackgroundView(colors: [.yellow,.indigo,.cyan], opacity: 0.4)
        Grid{
            ForEach(0..<10) { i in
                SquareView(
                    colors: [.red,.green,.blue],
                    dim: CGFloat(i) * 5.0
                )
            }
            
            ForEach(0..<10) { i in
                SquareView(
                    colors: [.red,.green,.blue],
                    dim: CGFloat(10-i) * 5.0
                )
            }
        }
    }
}
