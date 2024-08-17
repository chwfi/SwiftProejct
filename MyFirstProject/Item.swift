//
//  Item.swift
//  MyFirstProject
//
//  Created by 최원석 on 8/18/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
