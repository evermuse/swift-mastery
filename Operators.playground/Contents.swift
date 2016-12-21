//: Playground - noun: a place where people can play

import UIKit

// unary / prefix operator - operate on one targets

let z = 1

-z  // flips to negative


// binary operator - operates on two targets

let a = 1 + 2


// ternary operator - operates on three targets

var ternary = false

var string1 = "string1 gets returned"

var string2 = "string2 gets returned"

ternary ? string1 : string2


// = is an assignment operator

var d = 8

var e = 6

d = e


// arithmetic operators

3 + 3
6 - 2
2 * 4
8 / 2


// concatenation

"hello" + " world"


// remainder operator modulo - ignores the division and just returns the remainder

9 % 4

-9 % 4


// compound assignment operator

var c = 1

c += 2


// comparison operators - all return a bool

var f = 3

c == f  // equal to

c != f  // ! is not operator

c > f
c < f
c <= f
c >= f

let name = "Bryan"

if name == "Bryan" {
    
    print("The statement is true!")
    
} else {
    
    print("The statement is false!")
    
}


// Nil Coalescing Operator

let gpsDirections = "north"

var paperMapDirections: String?  // optional - value is in question

var navigate = paperMapDirections ?? gpsDirections  // ?? checks for a value of the first argument... and if none is found the second argument gets stored


// Range operators

for index in 0...4 {  // closed range uses all numbers including the final value
    
    print("\(index) times 3 is \(index * 3)")
    
}


// Half open range operator (..<)

for index in 0..<4 {  // closed range uses all numbers except the final value
    
    print("\(index) times 3 is \(index * 3)")
    
}


// logical operators

let itsAllowed = false

if !itsAllowed {  // ! turns around the value
    
    print("Access granted")
    
}

// &&

let correctCode = true
let fingerprintScan = false

if correctCode && fingerprintScan {
    
    print("Enter")
    
} else {
    
    print("Access Denied")
    
}

// || - or

var hasKey = true

if correctCode && fingerprintScan || hasKey {
    
    print("Enter")
    
} else {
    
    print("Access Denied")
    
}




