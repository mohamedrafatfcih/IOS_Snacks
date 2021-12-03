//
//  Dumping+Printing.swift
//
//
//  Created by MohamedRafat on 12/3/21.
//

import Foundation

// Let's creat an object to see the different between dump() and print()
class Person {
    let id: Int
    let name: String
    let age: Int
    var car: Car?
    
    init(id: Int, name: String, age: Int, car: Car?) {
        self.id = id
        self.name = name
        self.age = age
        self.car = car
    }
}

let person = Person(id: 1, name: "Person Name", age: 20, car: Car(model: "Car Model", color: "White"))

class Car {
    let model: String
    let color: String
    
    init(model: String, color: String) {
        self.model = model
        self.color = color
    }
}

print("Default printing: \(person)")  // Simple info
print("\n\n")
dump(person, name: "Person Dump")   // More detailed info (reflection)

// There are other paremeters for dump() function you can use them for controlling the dumping details.


// You also enable the person class to decide which info should be printed by conforming to CustomStringConvertible protocol.
// Then Implement the descripition and debugDescription properties.

extension Person{
    public var description: String {
        return "Person Info:  id = \(id), name = \(name), age = \(age), car = \(car?.description)"
    }
    
    public var debugDescription: String{
        return "Debug Person Info:  id = \(id), name = \(name), age = \(age), car = \(car?.description)"
    }
}

extension Car{
    public var description: String {
        return "model = \(model), color = \(color)"
    }
}


print("\n\n")
print("Custom Print")
print(person.debugDescription)
print("\n\n")
print(person.description)

