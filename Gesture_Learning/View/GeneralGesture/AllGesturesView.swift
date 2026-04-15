//
//  AllGesturesView.swift
//  Gesture_Learning
//
//  Created by Prakash on 15/04/26.
//

import SwiftUI

struct AllGesturesView: View {
    @State private var offSet : CGSize = .zero
    @State private var rotation = 0.0
    @State private var scale = 1.0
    
    var body: some View {
        MagnificationView(
            text: "Hello World",
            backgroundColor: .black,
            foreGroundColor: .orange,
            radius: 10
        )
        .offset(offSet)
        .rotationEffect(Angle(degrees: rotation))
        .scaleEffect(scale)
        .gesture(
            SimultaneousGesture(
                SimultaneousGesture(
                    DragGesture()
                        .onChanged({ value in
                            offSet = value.translation
                        })
                        .onEnded({ value in
                            withAnimation(.spring) {
                                offSet = .zero
                            }
                        }),
                    MagnificationGesture()
                        .onChanged({ value in
                            scale = value
                        })
                        .onEnded({ value in
                            withAnimation(.spring) {
                                scale = 1.0
                            }
                        })
                ),
                RotationGesture()
                    .onChanged { value in
                        rotation = value.degrees
                    }
                    .onEnded({ value in
                        withAnimation(.spring) {
                            rotation = 0
                        }
                    })
            )
        )
        .navigationTitle("Rotate Drag and Magnify")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        AllGesturesView()
    }
}
