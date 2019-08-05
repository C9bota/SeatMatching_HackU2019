//
//  ViewController.swift
//  SeatMatchingiOS
//
//  Created by yobiduck on 2019/07/30.
//  Copyright © 2019 yobiduck. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLocationManager()
       
       
    }

    func GetActive() -> Bool{
        return false
    }
    
    var locationManager: CLLocationManager!
    
    func setupLocationManager(){
        locationManager = CLLocationManager()
        guard let locationManager = locationManager else { return }
        
        locationManager.requestAlwaysAuthorization()
        
        let status = CLLocationManager.authorizationStatus()
        if status == .authorizedAlways {
            print("authoried!!")
            locationManager.delegate = self
            locationManager.distanceFilter = 0
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.first
        let latitude = location?.coordinate.latitude
        let longitude = location?.coordinate.longitude
        
        print("latitude: \(latitude!)\nlongitude: \(longitude!)")
    }
    
    func GetLocationLatitude() -> Double {
        return -150.0
    }
}

