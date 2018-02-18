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


