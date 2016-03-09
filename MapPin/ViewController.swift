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
        
        var currentBundle : String = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleIdentifier") as! String
        print(currentBundle)
        
        mapView.delegate = self
        
        if currentBundle.hasSuffix("MapPinSatellite")
        {
            mapView.mapType = MKMapType.Satellite
        }
        
        let centerPoint = CLLocationCoordinate2D(latitude: 52.011937, longitude: -3.713379)
        let coordinateSpan = MKCoordinateSpanMake(3.5, 3.5)
        let coordinateRegion = MKCoordinateRegionMake(centerPoint, coordinateSpan)
        
        mapView.setRegion(coordinateRegion, animated: false)
        mapView.regionThatFits(coordinateRegion)
        
        var annotation1 = MyPin(title: "Swansea Bay",
            subtitle: "Beautiful Beaches",
            coordinate: CLLocationCoordinate2DMake(51.587736, -3.90152))
        
        var annotation2 = MyPin(title: "Menai Bridge",
            subtitle : "Fantastic Engineering",
            coordinate : CLLocationCoordinate2DMake(53.220527, -4.163562))
        
        var annotation3 = MyPin(title: "Parc Y Scarlets",
            subtitle : "Oh Dear",
            coordinate : CLLocationCoordinate2DMake(51.678809, -4.127469))
        
        var annotation4 = MyPin(title: "Castell Coch",
            subtitle : "A Fairytale Castle",
            coordinate : CLLocationCoordinate2DMake(51.535819, -3.2547))
        
        var annotation5 = MyPin(title: "Arthur's Stone",
            subtitle : "Rock of Legend",
            coordinate : CLLocationCoordinate2DMake(51.593735, -4.179525))
        
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

