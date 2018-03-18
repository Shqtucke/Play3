//
//  PlayViewController.swift
//  play3
//
//  Created by Shaun Tucker on 3/18/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class PlayViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var myMapView = MKMapView(frame: self.view.bounds)
        
        myMapView.mapType = MKMapType.standard
        
        self.view.addSubview(myMapView)
        
        
        //view.backgroundColor = UIColor.green
        navigationItem.title = "PlayGround"
    }


    

}
