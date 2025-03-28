//
//  OnboardingViewModel.swift
//  XBikeApp
//
//  Created by Raúl Pavón on 27/03/25.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var currentPage = 0
    
    let pages: [OnboardingPage] = [
        OnboardingPage(title: "Simple to Use", description: "Extremely simple to use.", iconURL: "https://img.icons8.com/ios/100/easy.png"),
        OnboardingPage(title: "Track Time & Distance", description: "Track your time and distance.", iconURL: "https://img.icons8.com/ios/100/speed.png"),
        OnboardingPage(title: "Challenge Yourself!", description: "See your progress and challenge yourself!.", iconURL: "https://img.icons8.com/ios/100/bicycle.png"),
    ]
    
    func markOnboardingAsSeen() {
        UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
    }
    
    var isLastPage: Bool {
        currentPage == pages.count - 1
    }
}
