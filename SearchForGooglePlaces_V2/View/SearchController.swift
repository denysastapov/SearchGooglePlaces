//
//  SearchController.swift
//  SearchForGooglePlaces_V2
//
//  Created by Denys Astapov on 13.11.2023.
//

import UIKit
import GooglePlaces

class SearchController {
    static func setupSearchController(for viewController: UIViewController) {
        let resultsViewController = GMSAutocompleteResultsViewController()
        resultsViewController.delegate = viewController as? GMSAutocompleteResultsViewControllerDelegate

        let searchController = UISearchController(searchResultsController: resultsViewController)
        searchController.searchResultsUpdater = resultsViewController

        searchController.definesPresentationContext = true
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.modalPresentationStyle = .popover

        viewController.title = "Search places"
        viewController.navigationController?.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.searchController = searchController
    }
}
