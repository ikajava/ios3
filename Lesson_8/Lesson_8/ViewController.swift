//
//  ViewController.swift
//  Lesson_8
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func start(_ sender: UIButton) {
        performSegue(withIdentifier: "gameViewShowingSegue", sender: nil)
    }
    @IBAction func pickPhoto(_ sender: UIButton) {
     

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameViewShowingSegue" {
            let destinationVC = segue.destination as! GameViewController
            destinationVC.name = nameTextField.text! + " " + surnameTextField.text!
        }
    }
       

}

