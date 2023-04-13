import SwiftUI

struct FirstView: View {
//    @State private var firstDetailIsShown: Bool = false
    @EnvironmentObject var stateManager: StateManager
    var body: some View {
        NavigationView{
            VStack {
                Text("First View")
            
                NavigationLink(destination: FirstDetailView(),
                               isActive: $stateManager.firstDetailIsShown) {
                    Text("Show Detail View With State")
                    
                }
//                NavigationLink("Detail View"){
//                    FirstDetailView()
//                }
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
            .environmentObject(StateManager())
    }
}
