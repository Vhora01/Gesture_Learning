//
//  DragGestureBounceBack.swift
//  Gesture_Learning
//
//  Created by Prakash on 14/04/26.
//

import SwiftUI

struct DragGestureBounceBack: View {
    @State private var offset : CGSize = .zero
    
    var body: some View {
        VStack {
            Square()
            Spacer()
            MagnificationView(
                text: "Hello World",
                backgroundColor: .black.opacity(0.85),
                foreGroundColor: .orange.opacity(0.85),
                radius: 10
            )
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        offset = value.translation
                    })
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                    })
            )
            Spacer()
                .navigationTitle("Drag and Bounce Back")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack{
        DragGestureBounceBack()
    }
}
