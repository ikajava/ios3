//
//  Restaurant.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var imageName: String
    var location: String
    var type: String

    init(name: String, imageName: String, location: String, type: String) {
        self.name = name
        self.imageName = imageName
        self.location = location
        self.type = type
    }
}


