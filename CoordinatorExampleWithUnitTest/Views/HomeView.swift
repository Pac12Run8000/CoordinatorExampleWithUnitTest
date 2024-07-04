import SwiftUI

struct HomeView: View {
    var coordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Text("Home View")
            Button(action: {
                coordinator.showDetails()
            }) {
                Text("Go to Details")
            }
        }
        .padding()
    }
}
