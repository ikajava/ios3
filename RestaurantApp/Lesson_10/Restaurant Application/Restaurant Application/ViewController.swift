//
//  ViewController.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var imageNameArray = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
    
    var restaurantNameArray = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var locationArray = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var typeArray = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var restaurantArray = [Restaurant]()
    var index: Int?
    
    
    @IBOutlet weak var restaurantTableView: UITableView!
    override func viewDidLoad() {
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
        
        restaurantNameArray.forEach { (restaurantName) in
            let index = restaurantNameArray.index(of: restaurantName)
            let imageName = imageNameArray[index!]
            let locationName = locationArray[index!]
            let typeName = typeArray[index!]
            let restaurant = Restaurant(name: restaurantName, imageName: imageName, location: locationName, type: typeName)
            restaurantArray.append(restaurant)
        }
        
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = restaurantTableView.dequeueReusableCell(withIdentifier: "restaurantTableCell") as! RestaurantTableViewCell
        
        myCell.nameLabel.text = restaurantArray[indexPath.row].name
        myCell.restaurantImageView.image = UIImage(named: "\(restaurantArray[indexPath.row].imageName)")
        myCell.locationLabel.text = restaurantArray[indexPath.row].location
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
    
    
    
}

extension ViewController: DataReceivable {
    func updateWithReceivedData(resName: String, resImage: String, resLocation: String, resType: String) {
        let restaurantInstance = Restaurant(name: resName, imageName: resImage, location: resLocation, type: resType)
        restaurantTableView.beginUpdates()
        restaurantArray.append(restaurantInstance)
        let indexPath = IndexPath(row: restaurantArray.count - 1, section: 0)
        restaurantTableView.insertRows(at: [indexPath], with: .automatic)
        restaurantTableView.endUpdates()
    }
    
    
    
    
}

