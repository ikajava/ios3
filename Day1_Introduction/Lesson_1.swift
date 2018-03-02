//: Playground - noun: a place where people can play

import UIKit

// ცვლადის ცხადი დეკლარირება
var secondPersonName: String

//ცვლადის ცხადი დეკლარირება ინიციალიზაციით
var thirdPersonName = String()

var myAge = Int()               // მთელი რიცხვის დეკლარირება
var acceleration: Decimal       // ნამდვილი, მაღალი სიზუსტის რიცხვის დეკლარირება
acceleration = 9.8


secondPersonName = "Davit"
var personFirstName = "Nikoloz"
var personSurname = "Lartsuliani"
myAge = 30
var myAgeInString = "30"
Int(myAgeInString)              // მონაცემის ტიპის შეცვლა
print("\(personFirstName) \(personSurname) is \(myAge) years old") //სხვადასხვა ტიპის მონაცემების String-ად ინტერპოლაცია

var anotherInt: UInt            //Unsigned Int - მთელი დადებითი რიცხვის დეკლარირება
var doubleNumber: Double
var anotherDouble = Double()

let number1 = 100
var number2 = 6

number2 = number2 + 1
number2 += 2
number2 -= 3


number1 >= number2
number2 > number1
number2 <= number1
number2 == number1
number2 != number1

print(number1%number2)

//acceleration = 10

personFirstName = "Bye, \nPlayground"

print(personFirstName)
print(personFirstName)




if !(personFirstName == "Nikoloz" || personSurname == "Lartsuliani")  {
    let welcomeMessage = "Hi there"
    if 1 > 3 {
        print(welcomeMessage)
    }
    print(welcomeMessage)
}


let (x,y,z) = (10,"11",20)

var beconAge = 7
var eggsAge = 2

switch (beconAge, eggsAge) {
case (8...Int.max,_): print("Throw a becon"); fallthrough
case (_, 22...Int.max): print("Throw the eggs")
default: print("Make an omlette")
}

var arrayOfStrings = [String]()

arrayOfStrings.append("Suliko")
arrayOfStrings.append("Suliko")
arrayOfStrings.append("Irakli")
arrayOfStrings.append("Suliko")
arrayOfStrings.append("Irakli")
arrayOfStrings.index(of: "Irakli")

arrayOfStrings.capacity
arrayOfStrings.count

for item in arrayOfStrings {
    print(item)
}
arrayOfStrings.forEach {
    print($0)
}

var arrayOfIntegers = [10,2,3,6,7,15,21]
for item in arrayOfIntegers {
    if item % 2 == 0 {
        print(arrayOfIntegers.index(of: item)!)
    }
}

var setOfInteger = Set<Int>()
setOfInteger.insert(10)
setOfInteger.insert(8)
setOfInteger.insert(9)
setOfInteger.insert(10)
print(setOfInteger.count)

var airports = ["XYZ" : "London", "ABC": "A B C airport"]
airports["XYZ"] = nil

