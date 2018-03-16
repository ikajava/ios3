//
//  Game.swift
//  Lesson_8
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import UIKit

class Game {
    var user: User
   
    private var score: Int = 0
    private var counter: Int = 60
    
    var timer: Timer?
    
    init(user: User) {
        self.user = user
    }
    
    func startGame() {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.increaseCounter), userInfo: nil, repeats: true)
    }
    
    func endGame(label: UILabel) {
        label.text = "Game Over!"
        timer?.invalidate()
    }
    
    @objc func increaseCounter(label: UILabel) {
        if counter > 0 {
            self.counter -= 1
            label.text = "\(counter)"
        } else {
            endGame(label: label)
        }
    }
    
 
    
}
