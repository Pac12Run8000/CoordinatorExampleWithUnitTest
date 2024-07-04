import SwiftUI

class AppCoordinator: ObservableObject, Coordinator {
    @Published var currentView: AnyView?
    
    init() {
        start()
    }
    
    func start() {
        let homeView = HomeView(coordinator: self)
        currentView = AnyView(homeView)
    }
    
    func showDetails() {
        let detailsView = DetailsView(coordinator: self)
        currentView = AnyView(detailsView)
    }
}
