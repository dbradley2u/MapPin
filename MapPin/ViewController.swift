//
//  ViewController.swift
//  MapPin
//
//  Created by Denise Bradley on 3/4/16.
//  Copyright © 2016 Denise Bradley. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        let centerPoint = CLLocationCoordinate2D(latitude: 52.011937, longitude: -3.713379)
        let coordinateSpan = MKCoordinateSpanMake(3.5, 3.5)
        let coordinateRegion = MKCoordinateRegionMake(centerPoint, coordinateSpan)
        
        mapView.setRegion(coordinateRegion, animated: false)
        mapView.regionThatFits(coordinateRegion)
        
        var annotation1 = MKPointAnnotation()
        annotation1.title = "Swansea Bay"
        annotation1.subtitle = "Beautiful Beaches"
        annotation1.coordinate = CLLocationCoordinate2DMake(51.587736, -3.90152)
        
        var annotation2 = MKPointAnnotation()
        annotation2.title = "Menai Bridge"
        annotation2.subtitle = "Fantastic Engineering"
        annotation2.coordinate = CLLocationCoordinate2DMake(53.220527, -4.163562)
        
        var annotation3 = MKPointAnnotation()
        annotation3.title = "Parc Y Scarlets"
        annotation3.subtitle = "Oh Dear"
        annotation3.coordinate = CLLocationCoordinate2DMake(51.678809, -4.127469)
        
        var annotation4 = MKPointAnnotation()
        annotation4.title = "Castell Coch"
        annotation4.subtitle = "A Fairytale Castle"
        annotation4.coordinate = CLLocationCoordinate2DMake(51.535819, -3.2547)
        
        var annotation5 = MKPointAnnotation()
        annotation5.title = "Arthur's Stone"
        annotation5.subtitle = "Rock of Legend"
        annotation5.coordinate = CLLocationCoordinate2DMake(51.593735, -4.179525)
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

