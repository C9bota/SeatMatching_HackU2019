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
