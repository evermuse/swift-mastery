//: Playground - noun: a place where people can play

import UIKit

// protocols - why use?:
// 1. design adherance
// 2. reduce coupling
// 3. add flexibility
// 4. add extra functionality
// 5. safety

// @objc is only for classes


@objc protocol Palindrome {  // @objc allows for optional methods that don't have to be implemented - needs to be everywhere the method is
    
    @objc optional func palindromeCheck(word: String) -> Bool  // don't need to define whole protocol here... can do that in the Class
    
}


class FunWithWords: Palindrome {
    
    func oxymorons() {
        
        print("I find it Seriously Funny")
        
    }
    
    @objc func palindromeCheck(word: String) -> Bool {

        var reverseString = ""
        
        for character in word.characters {
            
            reverseString = String(character) + reverseString  // cast character to string so that concatenation can work
            
        }
        
        return reverseString.replacingOccurrences(of: " ", with: "").lowercased() == word.replacingOccurrences(of: " ", with: "").lowercased()
        
    }
    
}

var palindromeOrNot = FunWithWords()

palindromeOrNot.palindromeCheck(word: "bob")


