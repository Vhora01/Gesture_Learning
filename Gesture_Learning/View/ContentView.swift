//
//  ContentView.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form{
                MagnificationSectionView();
                DragSectionView()
                RotationSectionView()
                GeneralGestureView()
            }
            .navigationTitle("Gesture Learning")
        }
    }
}

#Preview {
    ContentView()
}
