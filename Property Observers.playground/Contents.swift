//: Playground - noun: a place where people can play

import UIKit

// property observes - observe and called in response to property changes
// - just for the 'setter'
// - willSet: someProperty is about to store a new value in itself
// - didSet: someProperty has just stored a new value itself
// - only for var not let


class MyBank {

    var bankBalance: Double = 0.0 {  // when the bankBalance var changes, the below observers are called
    
        willSet {
    
            print("About to set the bank account to \(newValue)") // newValue and oldValue are provided by swift - can customize this by specifying (i.e. willSet(newBalance)
    
        }

        didSet {
        
            if bankBalance > oldValue {
        
                print("Added \(bankBalance - oldValue)")
        
            }
        }
    
    }

}


let balance = MyBank()
balance.bankBalance = 500

balance.bankBalance = 750

balance.bankBalance = 1100