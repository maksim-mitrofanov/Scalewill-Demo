//
//  AppConstants.swift
//  Demo
//
//  Created by Максим Митрофанов on 04.10.2023.
//

import Foundation

class AppConstants {
    static let launchDelayInNanoseconds: UInt64 = 700_000_000
    
    // Random time since network speeds may vary
    static var networkRequestDelayInNanoseconds: UInt64 {
        UInt64.random(in: 400_000_000...1_200_000_000)
    }
}
