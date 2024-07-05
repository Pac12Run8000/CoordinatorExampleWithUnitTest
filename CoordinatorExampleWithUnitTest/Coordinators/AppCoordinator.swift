import SwiftUI

import SwiftUI

class AppCoordinator: ObservableObject, Coordinator {
    @Published var currentView: AnyView?
    var currentViewType: Any.Type?

    init() {
        start()
    }

    func start() {
        let homeView = HomeView(coordinator: self)
        currentView = AnyView(homeView)
        currentViewType = HomeView.self
    }

    func showDetails() {
        let detailsView = DetailsView(coordinator: self)
        currentView = AnyView(detailsView)
        currentViewType = DetailsView.self
    }
}
