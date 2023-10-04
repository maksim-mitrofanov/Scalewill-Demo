//
//  BundleExtensions.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import Foundation

extension Bundle {
    class var applicationName: String {
        if let displayName: String = Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String {
            return displayName
        } else if let name: String = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            return name
        }
        return "No Name Found"
    }
}
