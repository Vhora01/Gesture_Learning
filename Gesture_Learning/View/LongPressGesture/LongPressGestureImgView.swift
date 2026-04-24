//
//  LongPressGestureImgView.swift
//  Gesture_Learning
//
//  Created by Prakash on 23/04/26.
//

import SwiftUI

struct LongPressGestureImgView: View {
    var body: some View {
        Image("imgPurpleLightening")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

#Preview {
    LongPressGestureImgView()
}

