//: Playground - noun: a place where people can play

import UIKit

// structs
// 1. do everything that Classes do except Inherit and Typecast
// 2. struct is a value type rather than a reference type
// 3. struct is really just a collection of variables


struct Appointments {  // a struct is a type, like a String or Double - TypesGetUpperCamelCaseNames - whereas properties and methods get lowerCamelCaseNames
    
    let name: String        // all variables of struct are called members
    var location: String?
    var dueDate: NSDate?
    var priority: String?
    
    init(name: String) {  // custom init takes the place of memberwise initializer - but must provide initial value for all - variables cannot be left in an indeterminate state, unless optionals
        
        self.name = name
        
    }
    
    // functions in a struct
    
    func notes() -> String {
        
        return "The appointment with \(name) will require the Pensky files to bre updated"
    }
    
    mutating func outOfCountry() -> String {  // mutating allows members to be mutated
        
        location = "France"
        return location!
        
    }
    
}

// memberwise initializer - struct automatically create initializers for all its members - see below:

// var appointment = Appointments(name: "Bryan", location: "Bergies", dueDate: NSDate(), priority: "Important")

// appointment.location = "Philz" // dot notation changes struct content

// custom init

var appointment = Appointments(name: "Bryan")


// immutable instance of struct below:

let recurringAppointment = Appointments(name: "Tim")

appointment.notes()