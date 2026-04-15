//
//  RotationGestureStoreState.swift
//  Gesture_Learning
//
//  Created by Prakash on 15/04/26.
//

import SwiftUI

struct RotationGestureStoreState: View {
    @Binding var rotation : Double
    @State private var currentRotation : Double = 0.0
    
    var totalRotation : Double {
        currentRotation + rotation
    }
    var body: some View {
        MagnificationView(
            text: "Hello World",
            backgroundColor: .black,
            foreGroundColor: .orange,
            radius: 10
        )
        .rotationEffect(Angle(degrees: totalRotation))
        .gesture(
            RotationGesture()
                .onChanged { value in
                    currentRotation = value.degrees
                }
                .onEnded { value in
                    withAnimation(.spring()) {
                        rotation += currentRotation
                        currentRotation = 0.0
                    }
                }
        )
        .onTapGesture {
            withAnimation(.spring()) {
                currentRotation = 0
                rotation = 0
            }
        }
        .navigationTitle("Rotation Gesture Store Stay")
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    NavigationStack {
        RotationGestureStoreState(rotation: .constant(0))
    }
}
