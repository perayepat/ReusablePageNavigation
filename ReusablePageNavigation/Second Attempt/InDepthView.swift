import SwiftUI

struct InDepthView: View {
    
    let number: Int
//    @Environment(\.presentationMode) var presentationMode
//    @Binding var selectedNumber: Int?
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {    
        ZStack {
            Color.red
                .opacity(0.3)
                .ignoresSafeArea()
            VStack {
                Text("\(number)")
                    .font(.system(size: 120))
                    .bold()
                
                Button {
//                    stateManager.firstDetailIsShown = false
//                    stateManager.selectedItem = nil
                    stateManager.goToFirstRootView()
                } label: {
                    Text("Go back to root")
                }
                
                Button {
//                    presentationMode.wrappedValue.dismiss()
                    stateManager.selectedItem = nil
                } label: {
                    Text("Go one step back")
                        .bold()
                }
            }
        }
    }
}

struct InDepthView_Previews: PreviewProvider {
    static var previews: some View {
        InDepthView(number: 2)
            .environmentObject(StateManager())
    }
}
