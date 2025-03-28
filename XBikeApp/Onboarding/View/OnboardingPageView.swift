//
//  OnboardingPageView.swift
//  XBikeApp
//
//  Created by Raúl Pavón on 27/03/25.
//

import SwiftUI

struct OnboardingPageView: View {
    let page: OnboardingPage
    
    var body: some View {
        VStack(spacing: 30) {
            AsyncImage(url: URL(string: page.iconURL)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
            } placeholder: {
                ProgressView()
            }
            
            Text(page.title)
                .font(.title)
                .bold()
            
            Text(page.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
        }
        .padding(.top, 60)
    }
}

#Preview {
    OnboardingPageView(page: OnboardingPage(
        title: "Simple to Use",
        description: "Extremely simple to use.",
        iconURL: "https://img.icons8.com/ios/100/easy.png"))
}
