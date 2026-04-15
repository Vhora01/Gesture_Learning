//
//  MagnificationBounceBackView.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct MagnificationBounceBackView: View {
    @State private var scaleFactor : CGFloat = 1.0
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
        .navigationTitle("Magnification Bounce")
    }
}

#Preview {
    NavigationStack{
        MagnificationBounceBackView()
    }
}
