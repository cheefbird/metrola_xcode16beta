//
//  Direction.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/13/24.
//

import SwiftData

@Model
class Direction {
    var id: String
    var title: String
    
    init(id: String, title: String) {
        self.id = id
        self.title = title
    }
}
