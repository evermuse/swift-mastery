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