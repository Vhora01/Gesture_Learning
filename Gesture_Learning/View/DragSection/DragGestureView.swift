//
//  DragGestureView.swift
//  Gesture_Learning
//
//  Created by Prakash on 14/04/26.
//
import SwiftUI

struct DragGestureView: View {
    @State private var endOffSet : CGSize = .zero
    @State private var currentOffSet : CGSize = .zero
    
    var offSet : CGSize {
        CGSize(
            width: currentOffSet.width + endOffSet.width,
            height: currentOffSet.height + endOffSet.height
        )
    }
    
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
            .offset(offSet)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(.spring()) {
                            currentOffSet = value.translation
                        }
                    })
                    .onEnded(
                        { _ in
                            withAnimation(.spring()) {
                                endOffSet = CGSize(
                                    width: currentOffSet.width + endOffSet.width,
                                    height: currentOffSet.height + endOffSet.height
                                )
                                
                                currentOffSet = .zero
                        }
                    })
            )
            .onTapGesture {
                withAnimation(.spring()) {
                    endOffSet = .zero
                    currentOffSet = .zero
                }
            }
            Spacer()
                .navigationTitle("Drag And Still Stay")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack{
        DragGestureView()
    }
}
