//: Playground - noun: a place where people can play

import UIKit

// computed properties - can be declared in:
// 1. Class
// 2. Struct
// 3. Enumeration
// 4. Use anywhere in code
// 
// they do not store any value inside - provide get{} and/or set{}

struct Math {
    
    var width = 10.0
    var height = 10.0
    
    var area: Double {  // computed property that performs calculation - kind of like a function
        
        get {           // can remove the get keyword, but leaving it in is better for reading - just a 'getter' means it is Read-Only
            
            return width * height
            
        }
        set {           // setter is optional - can use an explicit parameter (i.e. set(newArea) or can eliminate and default to newValue
            
            let squareRoot = sqrt(newValue)
            width = squareRoot
            height = squareRoot
            
        }
    }
}

var squared = Math.init()


// use getter to determine area

squared.width
squared.height
squared.area


// use setter to set all new values

squared.area = 25
squared.width
squared.height