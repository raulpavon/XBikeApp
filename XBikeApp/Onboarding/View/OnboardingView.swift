//
//  OnboardingView.swift
//  XBikeApp
//
//  Created by Raúl Pavón on 27/03/25.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    var onFinish: () -> Void
    
    var body: some View {
        VStack {
            TabView(selection: $viewModel.currentPage) {
                ForEach(Array(viewModel.pages.enumerated()), id: \.offset) { index, page in
                    OnboardingPageView(page: page)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .padding()
            
            Button {
                if viewModel.isLastPage {
                    viewModel.markOnboardingAsSeen()
                    onFinish()
                } else {
                    withAnimation {
                        viewModel.currentPage += 1
                    }
                }
            } label: {
                Text(viewModel.isLastPage ? "Get Started" : "Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    OnboardingView(viewModel: OnboardingViewModel()) {
        print("Finished onboarding preview")
    }
}
