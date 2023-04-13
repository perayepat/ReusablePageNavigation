import SwiftUI

struct FirstDetailView: View {
    
    var body: some View {
        ZStack{
            Color.blue
                .opacity(0.3)
                .ignoresSafeArea()
            List(0..<50) { item in
                NavigationLink {
                    InDepthView(number: item)
                } label: {
                    Text("\(item)")
                }
                .navigationTitle("Detail View")

            }
        }
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            FirstDetailView()
        }
    }
}
