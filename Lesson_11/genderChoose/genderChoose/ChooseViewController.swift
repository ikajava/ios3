//
//  ChooseViewController.swift
//  genderChoose
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

protocol GenderDelegate {
    func genderChooseDelegate(image: UIImage, color: UIColor)
}

class ChooseViewController: UIViewController {
    
    var delegate: GenderDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismiss() {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func femaleButtonTap(_ sender: UIButton) {
        if let delegate = delegate {
            delegate.genderChooseDelegate(image: UIImage(named: "Female")!, color: UIColor(named: "feminine_pink")!)
        }
        
        dismiss()
    }
    
    @IBAction func maleButtonTap(_ sender: UIButton) {
        if let delegate = delegate {
            delegate.genderChooseDelegate(image: UIImage(named: "Male")!, color: UIColor(named: "masculine_navy")!)
        }
        dismiss()
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
