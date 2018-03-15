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
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = data {
            
            profilePicture.image = data.profilePicture
            nameLabel.text = data.name
        }
        
    }

   

}
