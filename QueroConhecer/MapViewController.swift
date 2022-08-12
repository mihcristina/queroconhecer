//
//  MapViewController.swift
//  QueroConhecer
//
//  Created by Michelli Cristina de Paulo Lima on 12/08/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var viInfo: UIView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAddress: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showRoute(_ sender: Any) {
    }
    
    @IBAction func showSearchBar(_ sender: UIBarButtonItem) {
    }
    
}
