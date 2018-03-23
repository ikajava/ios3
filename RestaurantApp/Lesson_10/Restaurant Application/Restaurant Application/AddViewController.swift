//
//  AddViewController.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    var restaurantSendDelegate: DataReceivable?
    
    @IBOutlet weak var restaurantLocationTextField: UITextField!
    @IBOutlet weak var restaurantNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTap(_ sender: UIButton) {
        if let delegate = restaurantSendDelegate {
            delegate.updateWithReceivedData(resName: restaurantNameTextField.text!, resImage: "donostia", resLocation: restaurantLocationTextField.text!, resType: "Thay food")
        }
        navigationController?.popToRootViewController(animated: true)
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
