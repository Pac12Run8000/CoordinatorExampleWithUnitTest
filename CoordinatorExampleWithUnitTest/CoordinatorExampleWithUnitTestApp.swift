//
//  CoordinatorExampleWithUnitTestApp.swift
//  CoordinatorExampleWithUnitTest
//
//  Created by Norbert Grover on 7/4/24.
//

import SwiftUI

@main
struct CoordinatorExampleWithUnitTestApp: App {
    @StateObject private var appCoordinator = AppCoordinator()
       var body: some Scene {
           WindowGroup {
               if let currentView = appCoordinator.currentView {
                   currentView
                       .environmentObject(appCoordinator)
               }
           }
       }
}
