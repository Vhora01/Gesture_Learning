//
//  DragSectionView.swift
//  Gesture_Learning
//
//  Created by Prakash on 14/04/26.
//

import SwiftUI

struct DragSectionView: View {
    @State private var scaleFactore : CGFloat = 1.0
    @State private var offSet : CGSize = .zero

    var body: some View {
        Section {
            NavigationLink {
                DragGestureBounceBack()
            } label: {
                Text(#"Drag Gesture "Go Back""#)
            }

            NavigationLink {
                DragGestureView()
            } label: {
                Text(#"Drag Gesture "Stay Still""#)
            }

            
            NavigationLink {
                DragGestureStoreState(endOffSet: $offSet)
            } label: {
                VStack(alignment:.leading) {
                    Text("Drag Gesture")
                    Text("Store State")
                        .fontWeight(.thin)
                }
            }
            
        }header: {
            Text("Drag Gesture Examples")
        }
    }
}


#Preview {
    DragSectionView()
}
