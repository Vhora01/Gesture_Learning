import SwiftUI

struct DragGestureStoreState: View {
    @State private var currentOffSet : CGSize = .zero
    @Binding var endOffSet : CGSize

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
                .navigationTitle("Drag Gesture Store State")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack{
        DragGestureStoreState(endOffSet: .constant(.zero))
    }
}
