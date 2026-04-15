//
//  MagnificationSectionView.swift
//  Gesture_Learning
//
//  Created by Prakash on 13/04/26.
//

import SwiftUI

struct MagnificationSectionView: View {
    @State private var scaleFactore : CGFloat = 1.0
    var body: some View {
        Section {
            NavigationLink {
                MagnificationBounceBackView()
            } label: {
                Text(#"Magnification Gesture "Go Back""#)
            }

            NavigationLink {
                MagnificationStoreStateView(scaleFactor: $scaleFactore)
            } label: {
                Text(#"Magnification Gesture "Stay Still""#)
            }

            
            NavigationLink {
                
            } label: {
                VStack(alignment:.leading) {
                    Text("Magnification Gesture")
                    Text("Store State")
                        .fontWeight(.thin)
                }
            }
            
        }header: {
            Text("Magnification Gesture Examples")
        }
    }
}

#Preview {
    MagnificationSectionView()
}
