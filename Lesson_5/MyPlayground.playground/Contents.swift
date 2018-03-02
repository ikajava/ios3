//: Playground - noun: a place where people can play

import UIKit

struct Person {
    var name: String
    var surname: String
}

enum FlightError: String, Error  {
    case Uadgiloba = "You haven't any places"
    case OtherError = "Something other occured"
}

enum Airplane: Int {
    case Boeing = 1
    case Airbus = 20
    case Cessna = 3
}

class Flight {
    var airplane: Airplane
    var passangers = [Person]()
    var emptySeats = Int()
    
    init(airplane: Airplane) {
        self.airplane = airplane
        emptySeats = airplane.rawValue
    }
    
    func registerPassanger(person: Person) throws {
        if emptySeats > 0 {
            passangers.append(person)
            emptySeats -= 1
        } else {
            throw FlightError.Uadgiloba
        }
        
    }
    
    func remainedPlaces() -> Int {
        return airplane.rawValue - passangers.count
    }
}
let passanger1 = Person(name: "Zviadi", surname: "Karaulashvili")
let passanger2 = Person(name: "Dato", surname: "Nozadze")
let flight123 = Flight(airplane: Airplane.Boeing)

do {
    try flight123.registerPassanger(person: passanger1)
    print("Success!")
} catch FlightError.Uadgiloba {
    print(FlightError.Uadgiloba.rawValue)
}

do {
    try flight123.registerPassanger(person: passanger2)
    print("Success!")
} catch FlightError.Uadgiloba {
    print(FlightError.Uadgiloba.rawValue)
}

print(flight123.remainedPlaces())

var name = "Beka"

extension String {
    func sayHallo() -> String {
        return "Hello " + self + "!"
    }
    
    func returnUppercased() -> String {
        return self.uppercased() + " <- it's how it uppercased looks like :)"
    }
    
    var HalloString: String {
        return "Hello " + self + "!"
    }
}

print(name.sayHallo())
print(name.returnUppercased())


name.sayHallo()
name.HalloString



protocol Feadable {
    var name: String { set get }
    
    func eat() -> String
}
protocol Walkable {
    
}
protocol Talkable {
    
}

class Human: Feadable, Walkable, Talkable {
    var name: String
    func eat() -> String {
        return "I'm eating"
    }
    init(name: String) {
        self.name = name
    }
}

class Dog: Feadable {
    var name: String
    func eat() -> String {
        return "I'm eating and I'm barking!"
    }
    init(name: String) {
        self.name = name
    }
    func bark() -> String {
        return "Wooofff!!"
    }
}

class Breakfast {
    func Dinner(feadable: Feadable) -> String {
        
        if let dog = feadable as? Dog {
            print(dog.eat())
            return dog.bark()
        }
        return feadable.eat()
    }
}

let breakfast = Breakfast()
let human = Human(name: "Lika")
let dog = Dog(name: "Tsuga")
print(breakfast.Dinner(feadable: human))
print(breakfast.Dinner(feadable: dog))


/// Protocol Excercise
/// პროტოკოლი Calculatable, რომელსაც უნდა ჰქონდეს მეთოდი calculateArea და calculatePerimeter
//
//უნდა გქონდეთ ორი კლასი, Square და Rectangle, რომლებიც იქნებიან ამ პროტოკოლის ხელმომწერები.
//
//და უნდა გქონდეთ კლასი, Calculations, რომლის ფუნქცია getArea და getPerimeter, რომლებიც გამოთვლიან ორივე კლასის ოთხკუთხედის პერიმეტრებსა და ფართობებს, ოღონდ თან კონსოლში დაწერს, "I'm square და ------- მნიშვნელობები" და "I'm rectangle და მნიშნველობები _______"


protocol Calculatable {
    func calculateArea() -> Double
    func calculatePerimeter() -> Double
}

class Square: Calculatable {
    var a: Double
    init(width: Double) {
        self.a = width
    }
    
    func calculateArea() -> Double {
        return a * a
    }
    
    func calculatePerimeter() -> Double {
        return 4 * a
    }
}

class Rectangle: Calculatable {
    var a: Double
    var b: Double
    init(width: Double, height: Double) {
        self.a = width
        self.b = height
    }
    
    func calculatePerimeter() -> Double {
        return 2 * (a + b)
    }
    
    func calculateArea() -> Double {
        return a * b
    }
}

class Calculations {
    class func getArea(calculatable: Calculatable) {
        if let form = calculatable as? Square {
            print("I'm square, my area is \(form.calculateArea()) and my perimeter is \(form.calculatePerimeter())")
        }
        if let form = calculatable as? Rectangle {
             print("I'm Rectangle, my area is \(form.calculateArea()) and my perimeter is \(form.calculatePerimeter())")
        }
        
    }
}

let square = Square(width: 4)
let rectangle = Rectangle(width: 2, height: 4)
Calculations.getArea(calculatable: square)
Calculations.getArea(calculatable: rectangle)

