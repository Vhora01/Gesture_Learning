//
//  RotationGestureView.swift
//  Gesture_Learning
//
//  Created by Prakash on 15/04/26.
//

import SwiftUI

struct RotationGestureView: View {
    @State private var rotation : Double = 0.0
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
        .navigationTitle("Rotation Demo Stay Still")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RotationGestureView()
}
