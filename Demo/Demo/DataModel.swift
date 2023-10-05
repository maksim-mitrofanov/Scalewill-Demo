//
//  DataModel.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import Foundation

struct DataModel: Identifiable, Codable {
    let name: String
    let price: Int
    let keywords: [String]
    let id: String
}

extension DataModel {
    static let template1 = DataModel(name: "First Item", price: 100, keywords: ["red", "versatile", "inexpensive"], id: "123")
    static let template2 = DataModel(name: "Second Item", price: 150, keywords: ["yellow", "interesting", "available"], id: "456")
    static let template3 = DataModel(name: "Third Item", price: 190, keywords: ["green", "doorway", "out-of-stock"], id: "789")
}
