//
//  Place.swift
//  QueroConhecer
//
//  Created by Michelli Cristina de Paulo Lima on 12/08/22.
//

import Foundation
import MapKit

struct Place {
    let name: String
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let addreess: String
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
