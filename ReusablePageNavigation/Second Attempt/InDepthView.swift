import SwiftUI

struct InDepthView: View {
    
    let number: Int
    @Environment(\.presentationMode) var presentationMode
    
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
                    
                } label: {
                    Text("Go back to root")
                }
                
                Button {
                    presentationMode.wrappedValue.dismiss()
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
    }
}
