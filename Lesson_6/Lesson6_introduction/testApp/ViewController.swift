//
//  ViewController.swift
//  testApp
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var timer = Timer()
    
   
    
    @objc func change() {
        print("Do nothing")
    }
    
    @objc func changeCounter() {
        var counter = Int(label.text!)!
        counter += 1
        label.text = "\(counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: (#selector(ViewController.change)), userInfo: nil, repeats: true)
        timer.invalidate()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonTap(_ sender: UIButton) {
        changeCounter()
    }
    
    @IBAction func ButtonDown(_ sender: Any) {
        timer.fire()
        print("fired")
    }
    @IBAction func ButtonTouchCancel(_ sender: Any, forEvent event: UIEvent) {
        timer.invalidate()
        print("infired")
    }
    @IBAction func ButtonTouchUpOutside(_ sender: Any) {
        
        
    }
    @IBAction func touchDown(_ sender: Any) {
        timer.invalidate()
        print("infired")
    }
}

