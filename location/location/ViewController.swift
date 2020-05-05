//
//  ViewController.swift
//  location
//
//  Created by dajere kyree newby on 4/28/20.
//  Copyright © 2020 dajere kyree newby. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var distanceLabel: UILabel!
    
    let locMan: CLLocationManager = CLLocationManager()
    var startLocation: CLLocation!
    
    let boraLatitude: CLLocationDegrees = 40.3114
    let boraLongitude: CLLocationDegrees = -79.5567
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let newLocation: CLLocation=locations[0]
    NSLog("Something is happening")
    
        
        if newLocation.horizontalAccuracy >= 0 {
        let shu:CLLocation = CLLocation(latitude: boraLatitude,longitude: boraLongitude)
        let delta:CLLocationDistance = shu.distance(from: newLocation)
        let miles: Double = (delta * 0.000621371) + 0.5 // meters to rounded miles
                    if miles < 3 {
                    // Stop updating the location
                                    locMan.stopUpdatingLocation()
                    // Congratulate the user
                                    distanceLabel.text = "Enjoy\nSeton Hill University!"
                                } else {
                    let commaDelimited: NumberFormatter = NumberFormatter()
                                    commaDelimited.numberStyle = NumberFormatter.Style.decimal
                                    distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+" miles to bora"
            }
        }
        else
                {
        // add action if error with GPS
                }
            }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    locMan.delegate = self
           locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers
           locMan.distanceFilter = 1609; // a mile (in meters)
           locMan.requestWhenInUseAuthorization() // verify access to gps
           locMan.startUpdatingLocation()
           startLocation = nil
    }


}

