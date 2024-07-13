//
//  LocationManager.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/12/24.
//

import CoreLocation
import Foundation

final class LocationManager: NSObject, ObservableObject {
    @Published var lastKnownLocation: CLLocationCoordinate2D?

    var manager = CLLocationManager()


    func checkLocationAuthorization() {
        manager.delegate = self
        manager.startUpdatingLocation()

        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .restricted:
            print("Location restricted")
        case .denied:
            print("Location restricted")
        case .authorizedAlways:
            print("Location authorizedAlways")
        case .authorizedWhenInUse:
            print("Location authorized when in use")
            lastKnownLocation = manager.location?.coordinate
        @unknown default:
            print("Location services disabled")
        }
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_: CLLocationManager) {
        checkLocationAuthorization()
    }

    func locationManager(
        _: CLLocationManager,
        didUpdateLocations locations: [CLLocation]
    ) {
        lastKnownLocation = locations.first?.coordinate
    }
}
