//
//  RotationGestureBounceBack.swift
//  Gesture_Learning
//
//  Created by Prakash on 15/04/26.
//

import SwiftUI

struct RotationGestureBounceBack: View {
    @State private var rotation : Double = 0.0
    var body: some View {
        MagnificationView(
            text: "Hello World",
            backgroundColor: .black,
            foreGroundColor: .orange,
            radius: 10
        )
        .rotationEffect(Angle(degrees: rotation))
        .gesture(
            RotationGesture()
                .onChanged { value in
                    rotation = value.degrees
                }
                .onEnded { value in
                    withAnimation(.spring()) {
                        rotation = 0.0
                    }
                }
        )
        .navigationTitle("Rotation Demo Bounce Back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        RotationGestureBounceBack()
    }
}
