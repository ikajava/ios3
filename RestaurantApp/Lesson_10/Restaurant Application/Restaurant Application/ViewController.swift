//
//  ViewController.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var imageNameArray = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
    
    var restaurantNameArray = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var locationArray = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var typeArray = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var restaurantArray = [Restaurant]()
    var index: Int?
    var refreshControll: UIRefreshControl!
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var restaurantTableView: UITableView!
    override func viewDidLoad() {
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        restaurantNameArray.forEach { (restaurantName) in
            let index = restaurantNameArray.index(of: restaurantName)
            let imageName = imageNameArray[index!]
            let locationName = locationArray[index!]
            let typeName = typeArray[index!]
            let restaurant = Restaurant(name: restaurantName, imageName: imageName, type: typeName)
            restaurantArray.append(restaurant)
         
        }
        refreshControll = UIRefreshControl()
        refreshControll.attributedTitle = NSAttributedString(string: "Refreshing the data")
        refreshControll.addTarget(self, action: #selector(self.updateTableView), for: .valueChanged)
        restaurantTableView.addSubview(refreshControll)
        super.viewDidLoad()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        print(locations[0].coordinate)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = restaurantTableView.dequeueReusableCell(withIdentifier: "restaurantTableCell") as! RestaurantTableViewCell
        
        myCell.nameLabel.text = restaurantArray[indexPath.row].name
        myCell.restaurantImageView.image = UIImage(named: "\(restaurantArray[indexPath.row].imageName)")
        myCell.locationLabel.text = "\(restaurantArray[indexPath.row].longitude) + \(restaurantArray[indexPath.row].latitude)"
        myCell.typeLabel.text = restaurantArray[indexPath.row].type
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "detailsSegue", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue" {
            if let destinationViewController = segue.destination as? DetailsViewController {
                destinationViewController.restaurant = restaurantArray[index!]
            }
        }
        
        if segue.identifier == "addSegue" {
            if let destinationViewController = segue.destination as? AddViewController {
                destinationViewController.restaurantSendDelegate = self
            }
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            restaurantTableView.beginUpdates()
            restaurantTableView.deleteRows(at: [indexPath], with: .automatic)
            restaurantArray.remove(at: indexPath.row)
            restaurantTableView.endUpdates()
            
        }
    }
    
    @IBAction func addButtonTap(_ sender: Any) {
       performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    @objc func updateTableView() {
        let fileName = "restaurant"
 
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonDecode = try decoder.decode([Restaurant].self, from: data)
                print(jsonDecode)
                refreshControll.endRefreshing()
            }
            catch {
                print()
            }
           
        }
        
    }
    
}

extension ViewController: DataReceivable, CLLocationManagerDelegate {
    func updateWithReceivedData(restaurant: Restaurant) {
        
        restaurantTableView.beginUpdates()
        restaurantArray.append(restaurant)
        let indexPath = IndexPath(row: restaurantArray.count - 1, section: 0)
        restaurantTableView.insertRows(at: [indexPath], with: .automatic)
        restaurantTableView.endUpdates()
    }
    
    
    
    
}

