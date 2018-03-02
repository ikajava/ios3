//: Playground - noun: a place where people can play

import UIKit

enum Fruit: String {
    case Apple = "Name is Apple"
    case Peach = "Name is Apple 1"
    case Bannana = ""
    case Orange = " "
}

let myFruit = Fruit.Apple
print(myFruit.rawValue)

enum ColorValue {
    case Red, Blue, Yellow, Brown
}

struct Vehicle {
    var wheelCount: Int
    var engineVolume: Double
    var color: ColorValue
    var maxSpeed: Double = 250
    
    func drive() {
        print("I'm mooving")
    }
    
    mutating func changeSpeed(newSpeed: Double) {
        maxSpeed = newSpeed
    }
}

class VehicleClass {
    var wheelCount: Int = 4
    var engineVolume: Double
    var color: ColorValue
    var maxSpeed: Double = 250
    
    init(a: Int, b: Double, c: ColorValue) {
        self.wheelCount = a
        self.engineVolume = b
        self.color = c
    }
    
    init(engineVolume: Double, color: ColorValue) {
        self.engineVolume = engineVolume
        self.color = color
    }
    
    func changeSpeed(newSpeed: Double) {
        self.maxSpeed = newSpeed
    }
    
}

var myCar = Vehicle(wheelCount: 4, engineVolume: 1.8, color: .Brown, maxSpeed: 250)

var myCarClassObject = VehicleClass(a: 4, b: 2.8, c: .Brown)


var myNewCar = VehicleClass(a: 4, b: 2.0, c: ColorValue.Brown)

var stolenCar = myNewCar
print(myNewCar.color)
stolenCar.changeSpeed(newSpeed: 330)
print(stolenCar.maxSpeed)

stolenCar.color = .Blue
print(myNewCar.color)


myCar.changeSpeed(newSpeed: 300)
print(myCar.maxSpeed)
