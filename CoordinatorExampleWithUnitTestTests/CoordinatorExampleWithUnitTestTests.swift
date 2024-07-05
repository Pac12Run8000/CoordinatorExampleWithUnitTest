import SwiftUI
import XCTest
@testable import CoordinatorExampleWithUnitTest

final class CoordinatorExampleWithUnitTests: XCTestCase {
    var appCoordinator: AppCoordinator!

    override func setUp() {
        super.setUp()
        appCoordinator = AppCoordinator()
    }

    func testInitialViewIsHomeView() {
        XCTAssertTrue(appCoordinator.currentViewType == HomeView.self, "Initial view is not HomeView")
    }

    func testNavigationToDetailsView() {
        appCoordinator.showDetails()
        XCTAssertTrue(appCoordinator.currentViewType == DetailsView.self, "Current view is not DetailsView")
    }

    func testNavigationBackToHomeView() {
        appCoordinator.showDetails()
        XCTAssertTrue(appCoordinator.currentViewType == DetailsView.self, "Current view is not DetailsView")
        
        if appCoordinator.currentViewType == DetailsView.self {
            appCoordinator.start() // This should navigate back to HomeView
            XCTAssertTrue(appCoordinator.currentViewType == HomeView.self, "Failed to navigate back to HomeView")
        } else {
            XCTFail("Current view is not DetailsView")
        }
    }
}
