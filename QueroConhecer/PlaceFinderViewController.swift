//
//  PlaceFinderViewController.swift
//  QueroConhecer
//
//  Created by Michelli Cristina de Paulo Lima on 07/08/22.
//

import UIKit
import MapKit

class PlaceFinderViewController: UIViewController {

    
    @IBOutlet weak var tfCity: UITextField!
    @IBOutlet weak var aiLoading: UIActivityIndicatorView!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var viLoading: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func findCity(_ sender: Any) {
        tfCity.resignFirstResponder()
        let address = tfCity.text!
        load(show: true)
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address) { placemarks, error in
            self.load(show: false)
        }
    }
    
    func load(show: Bool) {
        viLoading.isHidden = !show
        if show {
            aiLoading.startAnimating()
        } else {
            aiLoading.stopAnimating()
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
