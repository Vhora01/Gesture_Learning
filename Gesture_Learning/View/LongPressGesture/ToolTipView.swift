//
//  ToolTipView.swift
//  Gesture_Learning
//
//  Created by Prakash on 23/04/26.
//

import SwiftUI

struct ToolTipView<Content:View,Message:View>: View {
    
    let content : Content
    let message : Message
    
   
    init(
        @ViewBuilder content : @escaping()->Content,
         @ViewBuilder message : @escaping()->Message
    ){
        self.content = content()
        self.message = message()
    }
    @State var showToolTip = false
    @GestureState var press = false
    
    var body: some View {
        ZStack {
            content
                .gesture(
                    LongPressGesture(minimumDuration: 0.5)
                        .updating($press) { currentState, gestureState, transaction in
                            gestureState = currentState
                        }
                        .onEnded({ _ in
                            showToolTip.toggle()
                        })
                )
            
            message
                .opacity(press ? 1.0 : 0.0)
                .animation(
                    .spring(
                        response: 0.4,
                        dampingFraction: 0.6
                    ),
                    value: press)
        }
        .onChange(of: press) { oldValue, newValue in
            print(oldValue)
            print(newValue)
        }
    }
}

#Preview {
    ToolTipView {
        LongPressGestureImgView()
    } message: {
        LongPressGestureMessageView(msgText: "Hello World")
    }
    .padding()
}
