//
//  MapHelper.swift
//  SearchForGooglePlaces_V2
//
//  Created by Denys Astapov on 13.11.2023.
//

import Foundation
import GoogleMaps

class MapHelper {
    static func setupMapView(coordinate: CLLocationCoordinate2D, view: UIView) -> GMSMapView {
        let mapViewFrame = CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width,
            height: view.frame.size.height
        )

        let mapView = GMSMapView.map(
            withFrame: mapViewFrame,
            camera: GMSCameraPosition.camera(withTarget: coordinate, zoom: 10)
        )
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)

        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        return mapView
    }
    
    static func addMarker(position: CLLocationCoordinate2D, mapView: GMSMapView) {
        let marker = GMSMarker(position: position)
        marker.map = mapView
    }
}
