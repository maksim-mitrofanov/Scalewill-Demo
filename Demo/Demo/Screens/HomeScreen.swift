//
//  HomeScreen.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var presenter: Presenter

    var body: some View {
        ZStack {
            if presenter.presentedItems.isEmpty {
                ProgressView()
            } else {
                VStack {
                    ForEach(presenter.presentedItems) { item in
                        Text(item.name)
                    }
                }
            }
        }
        .padding()
        .navigationTitle(Bundle.applicationName)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.large)
        .toolbar { toolbarItems() }
        .tint(Color.themeColor)
    }
    
    private func toolbarItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button("Load data") {
                
            }
        }
    }
}

#Preview {
    HomeScreen()
}
