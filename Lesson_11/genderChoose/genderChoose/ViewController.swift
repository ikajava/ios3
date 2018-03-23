//
//  ViewController.swift
//  genderChoose
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var genderImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func chooseButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "genderVCSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "genderVCSegue" {
            if let secondViewController = segue.destination as? ChooseViewController {
                secondViewController.delegate = self
            }
        }
    }
}

extension ViewController: GenderDelegate {
   
    func genderChooseDelegate(image: UIImage, color: UIColor) {
        genderImageView.image = image
        self.view.backgroundColor = color
    }
    
    
}

