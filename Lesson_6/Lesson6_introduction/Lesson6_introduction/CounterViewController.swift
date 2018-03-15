//
//  CounterViewController.swift
//  Lesson6_introduction
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {
    
    class Parent {
        var child: Child = Child()
        
        deinit {
            print("Parent Deinitialized")
        }
    }
    
    class Child {
        var i: Int = 8
        
        deinit {
            print("Child Deinitialized")
        }
    }
    
    class player {
        var name: String
        var score: Int
        
        init(name: String, score: Int) {
            self.name = name
            self.score = score
        }
        
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter = Int()
    
    var timer: Timer = Timer()
    var seconds: Int = 60
    
    fileprivate func returnToInitialState() {
        counter = 0
        seconds = 60
    }
    
    func gameOver() {
        returnToInitialState()
        
        
    }
    
    func updateLabelText(data: Int) {
        counterLabel.text = "\(data)"
    }
    
    func runTimer() {
        
            if !timer.isValid {
                 timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: (#selector(CounterViewController.updateTimer)), userInfo: nil, repeats: true)
            } else {
                print("non Valid")
            }
        
     
    }
    
   @objc func updateTimer() {
        if seconds > 0 {
            seconds -= 1
            timerLabel.text = "\(seconds)"
            print("triggered")
        } else {
            timer.invalidate()
            returnToInitialState()
            timerLabel.text = "\(seconds)"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabelText(data: counter)
        
        
       
        
        var mom: Parent?
        mom = Parent()
        
        mom = nil
        

    }
    @IBAction func tabButton(_ sender: Any) {
        runTimer()
        counter += 1
        updateLabelText(data: counter)
        

    }
    
    @IBAction func resetButton(_ sender: Any) {
      
        
        counter = 0
        updateLabelText(data: counter)
    }
    
    
    
    
}
