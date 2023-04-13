import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("First View")
                
                NavigationLink("Detail View"){
                    FirstDetailView()
                }
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
