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
    
    static func getFormattedAddress(with placemark: CLPlacemark) -> String {
        var address = ""
        if let street = placemark.thoroughfare {
            address += street
        }
        if let number = placemark.subThoroughfare {
            address += " \(number)"
        }
        if let subLocality = placemark.subLocality {
            address += ", \(subLocality)"
        }
        if let city = placemark.locality {
            address += "\n\(city)"
        }
        if let state = placemark.administrativeArea {
            address += " - \(state)"
        }
        if let postalCode = placemark.postalCode {
            address += "\nCEP: \(postalCode)"
        }
        if let country = placemark.country {
            address += "\n\(country)"
        }
        return address
    }
}
