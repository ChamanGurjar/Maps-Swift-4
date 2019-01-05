//
//  ViewController.swift
//  MapsDemoInSwift4
//
//  Created by Chaman Gurjar on 05/01/19.
//  Copyright © 2019 Chaman Gurjar. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showRegionOnMap()
    }
    
    private func showRegionOnMap() {
        // Loading = > 28.6602997, 77.2396823 - Red fort New Delhi India
        
        let latitude: CLLocationDegrees = 28.6602997
        let longtitude: CLLocationDegrees = 77.2396823
        //letDelta => Zoom level of the map
        let letDelta = 0.05
        let longDelta = 0.05
        let span = MKCoordinateSpan(latitudeDelta: letDelta, longitudeDelta: longDelta)
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        map.setRegion(region, animated: true)
        
        addAnnotationToAPlace(coordinates)
    }
    
    private func addAnnotationToAPlace(_ coordinates: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.title = "Red Fort New Delhi India!"
        annotation.subtitle = "Learning to implement maps in Swift"
        annotation.coordinate = coordinates
        map.addAnnotation(annotation)
    }
    
    
}

