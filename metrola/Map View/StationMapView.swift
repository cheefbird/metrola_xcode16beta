//
//  StationMapView.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/12/24.
//

import MapKit
import SwiftUI

struct StationMapView: View {
    @StateObject private var locationManager = LocationManager()
    
    let defaultRegion = MKCoordinateRegion(
        center: .init(latitude: 34.04869, longitude: -118.25864),
        span: .init(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        Map(initialPosition: .region(defaultRegion))
    }
}

#Preview {
    StationMapView()
}
