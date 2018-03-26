//
//  AddViewController.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit
import MapKit

class AddViewController: UIViewController {

    var restaurantSendDelegate: DataReceivable?
    var locationManager = CLLocationManager()
    var deviceLocation: CLLocation?
    
    @IBOutlet weak var restaurantLocationTextField: UITextField!
    @IBOutlet weak var restaurantNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    @IBAction func saveButtonTap(_ sender: UIButton) {
        if let delegate = restaurantSendDelegate {
            
            let newRestaurant = Restaurant(name: restaurantNameTextField.text!, imageName: "donostia", type: "Thay Food")
            newRestaurant.latitude = deviceLocation?.coordinate.latitude
            newRestaurant.longitude = deviceLocation?.coordinate.longitude
            delegate.updateWithReceivedData(restaurant: newRestaurant)
        }
        
        navigationController?.popToRootViewController(animated: true)
    }

}

extension AddViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        deviceLocation = locations[0]
    }
    
}
