//: Playground - noun: a place where people can play

import UIKit

enum CarType {
    case SUV, Track, Sportcar,Coupee
}

class Vehicle {
    var makeYear: Int
    var engineVolume: Double
   
    
    init(makeYear: Int, engineVolume: Double) {
        self.makeYear = makeYear
        self.engineVolume = engineVolume
    }
    
    func drive() {
        print("Moveee")
    }
    
    func calculateCustomFee() -> Double? {
        var coeficient: Double
        switch self.makeYear {
        case 0...1999: coeficient = 0.6
        case 2000...2010: coeficient = 0.5
        case 2011...2014: coeficient = 0.4
        case 2015...2018: coeficient = 0.3
        default:
                return nil
        }
        return coeficient * 1000 * self.engineVolume
    }
}

class SportCar: Vehicle {
    
    var color: String = "Red"
    
    override func drive() {
        print("Move Faster!!")
    }
}


var myCar = Vehicle(makeYear: 2018, engineVolume: 1.8)
if let fee = myCar.calculateCustomFee() {
    print(fee)
}


var mySportCar = SportCar(makeYear: 2018, engineVolume: 5.6)
mySportCar.calculateCustomFee()
mySportCar.drive()


