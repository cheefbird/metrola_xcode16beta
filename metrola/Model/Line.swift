//
//  Line.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/8/24.
//

import SwiftData

@Model
class Line {
    @Attribute(.unique) var id: String
    var name: String
    var color: String
    var type: String

    init(id: String, name: String, color: String, type: String) {
        self.id = id
        self.name = name
        self.color = color
        self.type = type
    }
}
