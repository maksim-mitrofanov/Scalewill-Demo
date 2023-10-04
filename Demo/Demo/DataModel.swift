//
//  DataModel.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import Foundation

struct DataModel: Identifiable {
    let name: String
    let price: Int
    let keywords: [String]
    let id: String = UUID().uuidString
}

extension DataModel {
    static let template1 = DataModel(name: "First Item", price: 100, keywords: ["red", "versatile", "inexpensive"])
    static let template2 = DataModel(name: "Second Item", price: 150, keywords: ["yellow", "interesting", "available"])
    static let template3 = DataModel(name: "Third Item", price: 190, keywords: ["green", "doorway", "out-of-stock"])
}
