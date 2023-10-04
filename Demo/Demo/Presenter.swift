//
//  Presenter.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import Combine
import Foundation

final class Presenter: ObservableObject {
    @Published private var networkService = NetworkService()
    @Published private(set) var presentedItems = [DataModel]()
        
    func fetchLatestData() async {
        do {
            let data = try await networkService.fetchLatestData()
            await MainActor.run {
                presentedItems = data
            }
        } catch {
            // Error handling
        }
    }
}
