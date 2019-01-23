//
//  Location.swift
//  ToDo
//
//  Created by Marian König on 21.01.19.
//  Copyright © 2019 none. All rights reserved.
//

import CoreLocation

struct Location {
    
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String,
         coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}
