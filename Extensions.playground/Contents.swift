//: Playground - noun: a place where people can play

import UIKit

// extensions add new functionality to: Class, Enum, Struct, Protocol
// i.e. extension Array {} would add functionality to all instances of Arrays, even if they were created before the extension


extension Int {
    
    var feetInMile: Int { return self * 5280 }
    var inchInMile: Int { return self * 63360 }
    
}

let marathonInFeet = 26.feetInMile

print("The distance in feet of a 26 mile marathon is \(marathonInFeet) feet")

let marathonInInches = 26.inchInMile

print("The distance in inches of a 26 mile marathon is \(marathonInInches) inches")


// extending a protocol

// extension someType: AProtocol, AnotherProtocol {
    
    // implementation for the protocol goes here
    
// }
