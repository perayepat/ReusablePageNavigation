import Foundation
import Combine

class StateManager: ObservableObject {
    @Published var selection: Int = 2
    @Published var firstDetailIsShown: Bool = false
    @Published  var selectedItem: Int? = nil
    
    var subscriptions = Set<AnyCancellable>()
    /// This is how we couple two states toghether to make sure we never run into a stage of undifiened states
    
//    init(){
//        $firstDetailIsShown
//            .filter({ !$0 })
//            .removeDuplicates()
//            .sink { [weak self] value in
//                self?.selectedItem = nil
//            }
//            .store(in: &subscriptions)
//    }
    func goToFirstRootView(){
        selectedItem = nil
        firstDetailIsShown = false
    }
}


