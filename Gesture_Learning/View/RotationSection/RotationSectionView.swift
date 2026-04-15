

import SwiftUI

struct RotationSectionView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        Section {
            NavigationLink {
                RotationGestureBounceBack()
            } label: {
                Text(#"Rotation Gesture "Go Back""#)
            }

            NavigationLink {
                RotationGestureView()
            } label: {
                Text(#"Rotation Gesture "Stay Still""#)
            }

            
            NavigationLink {
                RotationGestureStoreState(rotation: $rotation)
            } label: {
                VStack(alignment:.leading) {
                    Text("Rotation Gesture")
                    Text("Store State")
                        .fontWeight(.thin)
                }
            }
            
        }header: {
            Text("Rotation Gesture Examples")
        }
    }
}


#Preview {
    NavigationStack{
        RotationSectionView()
    }
}

