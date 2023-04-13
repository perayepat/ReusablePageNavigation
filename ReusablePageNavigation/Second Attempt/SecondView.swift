import SwiftUI

struct SecondView: View {
    
    @State private var isPresentedOverlay: Bool = false
    
    var body: some View {
        VStack {
            Text("Second Tab View")
            
            Button(action: {
                isPresentedOverlay.toggle()
            }, label: {
                Text("Show overlay")
            })
                .fullScreenCover(isPresented: $isPresentedOverlay) {
                    VStack {
                        Text("Full screen overlay")
                        Button(action: {
                            isPresentedOverlay.toggle()
                        }, label: {
                            Text("Hide overlay")
                        })
                    }
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(.blue.opacity(0.3))
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
