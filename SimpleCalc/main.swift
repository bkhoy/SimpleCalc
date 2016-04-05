//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 BrittneyHoy. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

let num1 = UInt.init(readLine(stripNewline: true)!)!
let operation = readLine(stripNewline: true)!
let num2 = UInt.init(readLine(stripNewline: true)!)!

switch operation {
    case "+": print ("Result: \(num1 + num2) ")
    case "-": print ("Result: \(num1 - num2) ")
    case "*": print ("Result: \(num1 * num2) ")
    case "/": print ("Result: \(num1 / num2) ")
    case "%": print ("Result: \(num1 % num2) ")
    default: print ("Try another operation!")
}

//count -- take any number of inputs
//avg --take any number of inputs
//fact -- can only accept one number


//No matter what, first input will be an integer
var inputValues = []
