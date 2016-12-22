//: Playground - noun: a place where people can play

import UIKit

// function that adds 3 string objects together and returns a new string

func greeting(name: String) -> String {
    
    let greet = "Hello, " + name + "!"
    
    return greet
    
}

greeting(name: "Bryan")


// math functions that do calculations

func divide(num1: Double, num2: Double) -> Double {
    
    let total = num1 / num2
    
    return total
    
}

divide(num1: 3.14, num2: 2.1)


func multiply(num1: Double, num2: Double) -> Double {
    
    let total = num1 * num2
    
    return total
    
}

multiply(num1: 356, num2: 52)


// function that returns the amount of letters in a string

func countLetters(word: String) -> Int {
    
    print(word)
    
    return word.characters.count
    
}

countLetters(word: "Bryan")


// function with no return

func printLetters(word: String) {
    
    print(word)
    
}

printLetters(word: "Stoltman")  // when no return specified functions return void - which is an empty tuple


// variadic parameters - someNums below can be any number of items

func average(someNums: Double...) -> Double {
    
    var total: Double = 0
    
    for num in someNums { // someNums is an array within the function body, even though it hasn't been declared as such
        
        total += num
        
    }
    
    return total / Double(someNums.count)
    
}

average(someNums: 8, 4, 2, 5, 5, 9)

average(someNums: 78.4, 92.0, 77.2, 85.40, 91.10)


// function that sets its parameteres to a default value - i.e. use defaults if no value is passed in

func multiplySomeNumbers(numOne: Int = 4, numTwo: Int = 6) -> Int {
    
    return numOne * numTwo
    
}

multiplySomeNumbers()

multiplySomeNumbers(numOne: 10, numTwo: 2)


// function returning a tuple

func smallestLargest(arrayOfInts: [Int]) -> (min: Int, max: Int)? {  // takes an array of Ints - and returns a tuple (i.e. multiple values) - by giving names min, max can access the values later in code - ? says that func may or may not return a value
    
    if arrayOfInts.isEmpty { return nil } // protects the function against an empty array / nil value being passed in
    
    var minimum = arrayOfInts[0]
    var maximum = arrayOfInts[0]
    
    for value in arrayOfInts[1..<arrayOfInts.count] {
        
        if value < minimum {
            
            minimum = value
            
        } else if value > maximum {
            
            maximum = value
            
        }
    }
    
    return (minimum, maximum)
    
}

let orderedBySize = smallestLargest(arrayOfInts: [25, 19, 5, 88, -42, 11])  // orderedBySize is now a tuple, with a min and max value

// unprotected example of running the function below:
// print("The minimum is \(orderedBySize.min) and the maximum is \(orderedBySize.max)") // use the parameter labels to access the tuple values

// protected example of running the function below:

var potentiallyEmptyArray = [Int]()  // nothing gets printed out below

// var potentiallyEmptyArray = [2, 4] // prints out the result of the array

if let orderedBySize = smallestLargest(arrayOfInts: potentiallyEmptyArray) {
    
    print("The minimum is \(orderedBySize.min) and the maximum is \(orderedBySize.max)")
    
}


// function that uses inout parameters to alter var that is defined outside the function

func swapTwoNumbers(num1: inout Int, num2: inout Int) {
    
    let temp = num1
    num1 = num2
    num2 = temp
    
}

var valueOne = 35
var valueTwo = 100

swapTwoNumbers(num1: &valueOne, num2: &valueTwo) // & means that the variables can be modified by the function

print("valueOne is now \(valueOne), and valueTwo is now \(valueTwo)")


// nested functions

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {  // first return arrow is saying the enclosing func returns a nested func - first (Int) is the nested func parameter type - second return arrow is saying the nested func returns Int
    
    func stepForward(input: Int) -> Int {
        
        return input + 1
        
    }
    
    func stepBackward(input: Int) -> Int {
        
        return input - 1
        
    }
    
    return backwards ? stepBackward : stepForward // if Bool is True, stepBackward func is returned - if Bool is False, stepForward func is returned
    
}

var currentValue = -4

let moveNearerToZero = chooseStepFunction(backwards: currentValue > 0)

while currentValue != 0 {
    
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
    
}



