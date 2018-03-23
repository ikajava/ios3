//
//  GameViewController.swift
//  Lesson_8
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var name: String?
    
//    let arrayOfColors: UIColor = [#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]
    
    let picture = #imageLiteral(resourceName: "Profile_picture")
    
    @IBOutlet weak var tapCountLabel: UILabel!
    @IBOutlet weak var remainedTimeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        
    }
    
    @IBAction func tapButtonClick(_ sender: UIButton) {
        
    }
    

   

}
