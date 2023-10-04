//
//  DemoApp.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import SwiftUI

@main
struct DemoApp: App {
    @StateObject private var presenter = Presenter()
    
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .environmentObject(presenter)
                .task { await presenter.fetchLatestData() }
        }
    }
}
