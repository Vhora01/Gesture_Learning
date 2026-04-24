//
//  LongPressGestureMessageView.swift
//  Gesture_Learning
//
//  Created by Prakash on 23/04/26.
//

import SwiftUI


struct LongPressGestureMessageView: View {
    let msgText : String
    
    var body: some View {
        Text(msgText)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(Color.white)
            .padding()
            .background(.cyan)
            .cornerRadius(5)
            .shadow(radius: 3)
    }
}

#Preview {
    LongPressGestureMessageView(msgText: "Hello World")
}

