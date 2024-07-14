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
    
    var line: Line
    
    @Relationship(deleteRule: .deny, inverse: \Station.direction)
    var stations = [Station]()
    
    init(id: String, title: String, line: Line) {
        self.id = id
        self.title = title
        self.line = line
    }
}
