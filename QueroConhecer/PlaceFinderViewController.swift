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
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
