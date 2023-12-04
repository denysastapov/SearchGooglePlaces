//
//  ViewController+Autocomplete.swift
//  SearchForGooglePlaces_V2
//
//  Created by Denys Astapov on 13.11.2023.
//

import UIKit
import GooglePlaces
import GoogleMaps

extension ViewController: GMSAutocompleteResultsViewControllerDelegate {
    
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didAutocompleteWith place: GMSPlace) {
        searchController?.isActive = false
        let camera = GMSCameraPosition.camera(
            withLatitude: place.coordinate.latitude,
            longitude: place.coordinate.longitude,
            zoom: 13.0
        )
        mapView?.animate(to: camera)
        marker.position = place.coordinate
        marker.map = mapView
        dismiss(animated: true, completion: nil)
    }
    
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didFailAutocompleteWithError error: Error) {
        print("Error due to autocomplete results")
    }
}
