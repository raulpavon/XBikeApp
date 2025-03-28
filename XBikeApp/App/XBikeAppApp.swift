//
//  XBikeAppApp.swift
//  XBikeApp
//
//  Created by Raúl Pavón on 26/03/25.
//

import SwiftUI

@main
struct XBikeAppApp: App {
    @State private var hasSeenOnboarding: Bool = UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
    
    //let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            if hasSeenOnboarding {
                MainTabBarView()
            } else {
                OnboardingView(viewModel: OnboardingViewModel()) {
                    hasSeenOnboarding = true
                }
            }
        }
    }
}
