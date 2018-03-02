//: Playground - noun: a place where people can play

import UIKit
var airportDictionary: [String: String] = [:]

airportDictionary["TBS"] = "Tbilisi"
airportDictionary["KTS"] = "Kutaisi"

print(airportDictionary["TBS"]!)

var name: String?
var anotherName: String!

anotherName = "ika"
name = "ika"
print(name)

if let unwrappedName = name {
    print(unwrappedName)
} else {
    print("Name doesn't have a value")
}
var firstDouble = 10.0
var secondDOuble = 20.0

var a = 10.0
var b = 11.0

func sum(_ a: Double, _ b: Double) -> Double {
    firstDouble -= 5
    return a + b
}
func anotherSum(pirveli pirveli: Double, meore b: Double) -> Double {
    
    return a + b
}
func printSum(a: Double, b: Double) {
    print("a + b = \(a + b)")
}

func print20sum30() {
    print(20+30)
}
//sum(firstDouble, secondDOuble)
sum(a, b)
print(firstDouble)
printSum(a: 20, b: 25)
anotherSum(pirveli: 11, meore: 34)
print20sum30()

func airportPrinter(key: String) -> String {
    guard let returnValue = airportDictionary[key] else {
        return "Airport code is not correct"
        
    }
 
    return returnValue + "aklsdjaklsjdlk asd kjaskl"
    
}

func expectArray(array: [Double]) {
    
}

print(airportPrinter(key: "TBS"))





