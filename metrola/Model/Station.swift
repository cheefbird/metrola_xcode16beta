//
//  Station.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/13/24.
//

import SwiftData

@Model
class Station {
    var id: String
    var name: String
    var latitude: Double
    var longitude: Double
    
    init(id: String, name: String, latitude: Double, longitude: Double) {
        self.id = id
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
}
