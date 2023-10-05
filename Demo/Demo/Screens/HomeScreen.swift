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
                fetchedDataList
            }
        }
        .navigationTitle(Bundle.applicationName)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.large)
        .toolbar { toolbarItems() }
        .tint(Color.themeColor)
    }
    
    private func toolbarItems() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button("Load data") {
                Task {
                    await presenter.fetchLatestData()
                }
            }
        }
    }
    
    private var fetchedDataList: some View {
        VStack {
            List {
                ForEach(presenter.presentedItems) { item in
                    NavigationLink {
                        DetailedScreen(model: item)
                    } label: {
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text(item.price.description + "$")
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    let presenter = Presenter()
    
    let view = NavigationStack  {
        HomeScreen()
            .environmentObject(presenter)
            .task { await presenter.fetchLatestData() }
    }
    
    return view
}
