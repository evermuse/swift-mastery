//: Playground - noun: a place where people can play

import UIKit

// variable or constants store and refer to values - type inferred

let maximumNumberOfWithdrawals = 5

var withdrawalAttempts = 3

var a = 2, b = 0, c = 1

var someString = "This is type inference"


// type annotation

var helloSwift3: String  // colon means 'of type'

var north, south, east, west: String


// string interpolation

var name = "Bryan"

print(name)

print("My name is \(name)")


// can have two things on same line separated by semicolon

let pet = "dog" ; print(pet)


// converting a variable using a "Cast"

let three = 3

let fraction = 0.14159

let pi = Double(three) + fraction  // Double(three) is a cast cause it's converting one type to another


// booleans

let sunnyDay = true
let isRaining = false

if sunnyDay {
    
    print("Beach Day")
    
}