//
//  DetailsViewController.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var restaurant: Restaurant?

    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var detailsImageView: UIImageView!
    
    override func viewDidLoad() {
        if let restaurant = restaurant {
            detailsLabel.text = restaurant.name
            detailsImageView.image = UIImage(named: "\(restaurant.imageName)")
        }
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
