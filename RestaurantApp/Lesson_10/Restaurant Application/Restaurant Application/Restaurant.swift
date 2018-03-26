//
//  Restaurant.swift
//  Restaurant Application
//
//  Created by Ika Javakhishvili on 05/1/18.
//  Copyright © 2018 Ika Javakhishvili. All rights reserved.
//

import Foundation

class Restaurant: Decodable {
    var name: String
    var imageName: String
    var type: String
    
    var latitude: Double?
    var longitude: Double?

    init(name: String, imageName: String, type: String) {
        self.name = name
        self.imageName = imageName
        self.type = type
    }
}


