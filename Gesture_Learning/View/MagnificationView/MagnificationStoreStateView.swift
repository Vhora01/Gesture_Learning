//
//  Untitled.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//
import SwiftUI

struct MagnificationStoreStateView: View {
    @Binding var scaleFactor :CGFloat
    var body: some View {
        VStack {
            Spacer()
            MagnificationView(
                text: "Hello World",
                backgroundColor: .black,
                foreGroundColor: .orange,
                radius: 10
            )
            .scaleEffect(scaleFactor)
            .gesture(
                MagnificationGesture()
                    .onChanged({ value in
                        withAnimation(.spring()){
                            scaleFactor = value
                        }
                    })
                    .onEnded({ value in
                        withAnimation(.spring()){
                            scaleFactor = 1.0
                        }
                    })
            )
            Spacer()
        }
        .navigationTitle("Magnification Store State")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        MagnificationStoreStateView(scaleFactor: .constant(1.0))
    }
}

