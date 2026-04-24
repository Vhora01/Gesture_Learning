//
//  LongPressGestureView.swift
//  Gesture_Learning
//
//  Created by Prakash on 23/04/26.
//

import SwiftUI

struct LongPressGestureView: View {
    var body: some View {
        Section {
            NavigationLink("Long Press Gesture") {
                ToolTipView {
                    LongPressGestureImgView()
                } message: {
                    LongPressGestureMessageView(msgText: "Hello World")
                }
                .padding()
            }

        }header: {
            Text("Long Press Gesture Example")
        }
    }
}
#Preview {
    LongPressGestureView()
}
