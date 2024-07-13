//
//  StationMapView.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/12/24.
//

import MapKit
import SwiftUI

extension MKCoordinateRegion {
    static let losAngeles = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.04869,
            longitude: -118.25864),
        span: MKCoordinateSpan(
            latitudeDelta: 0.1,
            longitudeDelta: 0.1))
}

struct StationMapView: View {
    @StateObject var locationManager = LocationManager()

    @State private var position: MapCameraPosition = .region(.losAngeles)
    @State private var visibleRegion: MKCoordinateRegion?
    @State private var selectedStation: MKMapItem?

    var body: some View {
        Map(position: $position, selection: $selectedStation) {}
            .onMapCameraChange { context in
                visibleRegion = context.region
            }
            .mapControls {
                MapUserLocationButton()
            }
    }
}

#Preview {
    StationMapView()
}
