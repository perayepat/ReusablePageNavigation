
import SwiftUI

struct FirstTry: View {
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    @State var isFullScreenPresented = false
    let tabBarImageNames = ["person", "gear","plus.app.fill","pencil","lasso"]
    
    var body: some View {
        VStack(spacing: 0){
            ZStack{
                
                Spacer()
                    .fullScreenCover(isPresented: $isFullScreenPresented) {
                        Button {
                            isFullScreenPresented.toggle()
                        } label: {
                            Text("Full screen cover active")
                        }
                    }
                
                switch selectedIndex{
                case 0:
                    NavigationStack{
                        ScrollView {
                            ForEach(0..<100) { i in
                                Text("\(i)")

                            }
                            .frame(maxWidth: .infinity)
                            Spacer()
                        }
                        
                        .navigationTitle("First")
                    }
                        
                case 1:
                    VStack{
                        Text("Second")
                        Spacer()
                    }
                        
                default:
                    ScrollView{
                        Text("Default")
                        //                        .transition(.slide)
                    }
                }
            }
            
            Divider()
                .padding(.bottom,5)
            HStack {
                ForEach(0..<tabBarImageNames.count) { item in
                    Button {
                        selectedIndex = item
                        if item == 2{
                            isFullScreenPresented.toggle()
                            return
                        }
                    } label: {
                        Spacer()
                        
                        /// Adding the special button
                        if item == 2{
                            Image(systemName: tabBarImageNames[item])
                                .imageScale(.large)
                                .font(.title)
                                .bold()
                                .foregroundColor(.pink)
                        }else{
                            Image(systemName: tabBarImageNames[item])
                                .imageScale(.large)
                                .bold()
                                .foregroundColor(selectedIndex == item ? .black : .gray)
                            
                        }
                        Spacer()
                    }
                    .tint(.black)
                }
            }
        }
    }
}

struct FirstTry_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
