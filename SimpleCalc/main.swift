//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 BrittneyHoy. All rights reserved.
//

import Foundation


print("Enter an expression separated by returns:")

var input = readLine(stripNewline: true)!
var multiOperand = input.componentsSeparatedByString(" ")

if (multiOperand.count == 1) {

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
    
} else {

    var trueSize = multiOperand.count - 1
    let lastValue = multiOperand[trueSize].lowercaseString

    switch lastValue {
        case "count": print("Total Count: \(trueSize)")
        case "avg":
            var total = 0
            for value in 1...trueSize {
                total += value
            }
            print("Average: \(total / trueSize)")
        case "fact":
            var number = Int(multiOperand[0])!
            var answer = number
            while number > 1 {
                number -= 1
                answer *= number
            }
            print("Result: \(answer)")
        default: print("Check your options and spelling!")
    }
}