//: Playground - noun: a place where people can play

import UIKit

// Optionals
// 1. denoted by ?
// 2. may or may not contain a value
// 3. purpose is to prevent an ampty variable from being used
// 4. an empty or nil variable will crash program
// 5. unwrap means we use an 'if' check to see if an optional has a value
// 6. ! force unwraps an optional - tells swift that there will a value at runtime
// 7. optional binding means we check a variable before using it to see if it has a value, using an if statement


var optionalString: String? // declare optional

optionalString = "Unwrap me before you use me" // assign value to optional

let nowUnwrapped = optionalString!  // force unwrap optional


// optional binding below:

if let unwrappedString = optionalString {  // if optionalString has a value assign to the temporary variable unwrappedString and then run the following code
    
    print("There is a value in here: \(unwrappedString)")
    
} else {                                    // else run this following code - nil case is covered and code won't crash
    
    print("The optionalString contains nil")
    
}


// implicitly unwrapped optionals with !

var implicitlyUnwrapped: Double!  // if there's definitely going to be data in the variable... use the implicitly unwrapped ! to avoid having to do the check

