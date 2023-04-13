import SwiftUI

struct NavigationOne: View {
//    @State private var selection: Int = 1
    @EnvironmentObject var stateManager: StateManager
    var body: some View {
        
        
        TabView(selection: $stateManager.selection){
            FirstView()
                .tabItem {
                    Image(systemName: "1.circle.fill")
                }
                .tag(1)
            
            SecondView()
                .tabItem {
                    Image(systemName: "2.circle.fill")
                }
                .tag(2)
        }
    }
}

struct NavigationOne_Previews: PreviewProvider {
    static var previews: some View {
        NavigationOne()
            .environmentObject(StateManager())
    }
}
