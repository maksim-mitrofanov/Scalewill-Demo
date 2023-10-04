//
//  LaunchScreen.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isShowingHomeScreen = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ZStack {
                    Color.themeColor
                        .edgesIgnoringSafeArea(.all)
                    
                    Text("Demo")
                        .font(.custom("Onest-Light", size: 50))
                        .foregroundColor(.white)
                }
            }
            .navigationDestination(isPresented: $isShowingHomeScreen, destination: { HomeScreen() })
            .task { await launchApp() }
        }
    }
    
    private func launchApp() async {
        do {
            try await Task.sleep(nanoseconds: AppConstants.launchDelayInNanoseconds)
            await MainActor.run {
                isShowingHomeScreen = true
            }
        } catch {
            print("Failed to create a task")
        }
    }
}

#Preview {
    LaunchScreen()
}
