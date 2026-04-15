//
//  MagnificationView.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct MagnificationView : View {
    let text:String
    let backgroundColor : Color
    let foreGroundColor : Color
    let radius : CGFloat
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(foreGroundColor)
            .padding()
            .background(backgroundColor)
            .clipShape(.rect(cornerRadius: radius))
        
    }
}


#Preview {
    MagnificationView(
        text: "Hello World",
        backgroundColor: .black,
        foreGroundColor: .orange,
        radius: 10
    )
}
