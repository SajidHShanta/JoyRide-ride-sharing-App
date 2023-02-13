//
//  LocationManeger.swift
//  JoyRide
//
//  Created by Sajid Shanta on 13/2/23.
//

import CoreLocation

class LocationManeger: NSObject, ObservableObject {
    private let locationManeger = CLLocationManager()
    
    override init() {
        super.init()
        locationManeger.delegate = self
        locationManeger.desiredAccuracy = kCLLocationAccuracyBest // It gives the most accurate user location
        locationManeger.requestWhenInUseAuthorization()
        locationManeger.startUpdatingLocation()
    }
}

extension LocationManeger: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
//        print(locations.first)
        locationManeger.stopUpdatingLocation()
    }
}
