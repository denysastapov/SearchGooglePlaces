//
//  ViewController.swift
//  SearchForGooglePlaces_V2
//
//  Created by Denys Astapov on 05.11.2023.
//
import UIKit
import GooglePlaces
import GoogleMaps
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var resultsViewController: GMSAutocompleteResultsViewController?
    var searchController: UISearchController?
    var mapView: GMSMapView?
    var marker = GMSMarker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SearchController.setupSearchController(for: self)
        
        LocationManager.shared.startUpdatingLocation()
        
        LocationManager.shared.locationUpdateHandler = { [weak self] coordinate in
            guard let self = self else { return }
            self.mapView = MapHelper.setupMapView(coordinate: coordinate, view: self.view)
            MapHelper.addMarker(position: coordinate, mapView: self.mapView!)
        }
    }
}
