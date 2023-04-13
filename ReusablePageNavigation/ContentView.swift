
import SwiftUI

struct ContentView: View {
    @StateObject  var stateManager = StateManager()
    
    var body: some View {
        NavigationOne()
            .environmentObject(stateManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
