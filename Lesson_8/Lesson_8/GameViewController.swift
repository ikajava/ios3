//
//  GameViewController.swift
//  Lesson_8
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var data: User?
    
    @IBOutlet weak var tapCountLabel: UILabel!
    @IBOutlet weak var remainedTimeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = data {
            
            profilePicture.image = data.profilePicture
            nameLabel.text = data.name
        }
        
    }
    
    @IBAction func tapButtonClick(_ sender: UIButton) {
        
    }
    

   

}
