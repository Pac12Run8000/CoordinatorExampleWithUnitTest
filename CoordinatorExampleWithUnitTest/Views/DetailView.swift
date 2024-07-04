import SwiftUI

struct DetailsView: View {
    var coordinator: AppCoordinator
    var body: some View {
        VStack {
            Text("Details View")
            Button(action: {
                coordinator.start()
            }) {
                Text("Go to Home")
            }
        }
        .padding()
    }
}

