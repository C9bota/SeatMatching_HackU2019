//
//  GPSController.swift
//  SeatMatchingiOS
//
//  Created by yobiduck on 2019/07/30.
//  Copyright © 2019 yobiduck. All rights reserved.
//

import Foundation
import CoreLocation

    class GPSController{
    
        var locationManager: CLLocationManager!

        init() {
            setupLocationManager()
        }
        
        func setupLocationManager(){
            locationManager = CLLocationManager()
            guard let locationManager = locationManager else { return }
            
            locationManager.requestAlwaysAuthorization()
            
            let status = CLLocationManager.authorizationStatus()
            if status == .authorizedAlways {
                locationManager.distanceFilter = 10
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
        
        func GetLocationLongitude() -> Double {
            return -100.0
        }
        func GetDirection() -> TrainDirection {
            return TrainDirection.up
        }
    
}
