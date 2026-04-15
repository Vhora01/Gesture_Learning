//
//  GeneralGestureView.swift
//  Gesture_Learning
//
//  Created by Prakash on 15/04/26.
//

import SwiftUI

struct GeneralGestureView: View {
    var body: some View {
        Section {
            NavigationLink {
                AllGesturesView()
            } label: {
                Text(#"General Gesture"#)
            }

            
            
        }header: {
            Text("General Gesture Examples")
        }
    }
}

#Preview {
    GeneralGestureView()
}
