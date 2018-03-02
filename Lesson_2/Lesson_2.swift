//: Playground - noun: a place where people can play

import UIKit

var eggDue = 22
var baconDue = 6

if eggDue <= 21 && baconDue <= 7 {
    print("You can prepare the omlette")
} else {
    if eggDue > 21 {
        print("Eggs are over due")
    }
    if baconDue > 7 {
        print("bacon are over due")
    }
}


var myArray = Array<Int>()
var myArray1: Array<String>

var myArray2 = [Int]()
var myArray3: [Int]

var myArray4 = [1,2,3,6,23,8]
myArray4.min()
myArray4.max()
myArray4.first
myArray4.last
myArray4.append(38)
myArray4.insert(4, at: 3)
myArray4[4] = 12
//myArray4.remove(at: 0)
//myArray4.removeAll()
var myArrayAll = [Any]()
myArrayAll = [1, "Something", true, 0.4]

for element in myArray4 {
    print(element)
}

myArray.forEach { (item) in
    print(item)
}

myArray.forEach {
    print($0)
}

//for i in 1..<10 {
//    print(i)
//}

var mySet = Set<Int>() //მონაცემების სეტი
mySet.insert(123)
mySet.insert(234)
mySet.insert(456)
mySet.insert(123)
mySet.removeFirst()

mySet.count

myArray4.forEach {
    mySet.insert($0)
}
print(mySet)

var myDictionary = Dictionary<String, String>()
var myDictionary1: Dictionary<Int, Bool>
var myDictionary2: Dictionary<Bool, Int>
var myDictionary3 = ["The first key": "the first value", "Secont Key" : "Second value"]
myDictionary3["The first key"] = "Hello Playground"
myDictionary3.count

var myDictionary4 = ["class1": ["Giorgi": "Matchavariani", "Viki":"Melnichuk", "Giorgi1":"Chankseliani"]]

//myDictionary3 = [:]
for (gasagebi, mnishvneloba) in myDictionary3 {
    print("Key: - \(gasagebi)")
    print("Value: - \(mnishvneloba)")
}

var myVariable: String
var myInitializedVariable = String()
var arrayOfClass: [String]
arrayOfClass = []



