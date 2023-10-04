//
//  NetworkService.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import Foundation

final class NetworkService: ObservableObject {
    
    func fetchLatestData() async throws -> [DataModel] {
        var result = [DataModel]()
        
        try await Task.sleep(nanoseconds: AppConstants.networkRequestDelayInNanoseconds)
        result = [.template1, .template2, .template3]
        
        return result
    }
}
