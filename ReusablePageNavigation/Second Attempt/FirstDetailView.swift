import SwiftUI


/*
 When you dont add the selection and the tag the system will handle all that for you
 */

struct FirstDetailView: View {
    
//    @State private var selectedItem: Int? = nil
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        ZStack{
            Color.blue
                .opacity(0.3)
                .ignoresSafeArea()
            List(0..<50) { item in
                NavigationLink(destination: InDepthView(number: item),
                              tag: item,
                               selection: $stateManager.selectedItem,
                              label:{Text("\(item)")} )
                .navigationTitle("Detail View")

//                NavigationLink {
//                    InDepthView(number: item)
//                } label: {
//                    Text("\(item)")
//                }
            }
        }
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            FirstDetailView()
                .environmentObject(StateManager())
        }
    }
}
