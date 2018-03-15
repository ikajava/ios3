//
//  ViewController.swift
//  Lesson_7_Introduction
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tapButton: DesignableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapButton.layer.cornerRadius = tapButton.bounds.height / 2
        tapButton.layer.masksToBounds = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

