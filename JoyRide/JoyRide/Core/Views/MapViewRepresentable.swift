//
//  MapViewRepresentable.swift
//  JoyRide
//
//  Created by Sajid Shanta on 12/2/23.
//

import Foundation
import SwiftUI
import MapKit

struct MapViewRepresentable: UIViewRepresentable {
    // UIViewRepresentable is a wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.
    let mapView = MKMapView() // MKMapViw is UIKit map componenet
    
    func makeUIView(context: Context) -> some UIView {
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
         // to do
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension MapViewRepresentable {
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: MapViewRepresentable
        
        init(parent: MapViewRepresentable) {
            self.parent = parent
            super.init()
        }
    }
}
