//
//  main.swift
//  CalcArrayPoints
//
//  Created by Vishesh Sood on 4/4/17.
//  Copyright © 2017 Vishesh Sood. All rights reserved.
//

import Foundation

print("Hello, World!")

func add(left:Int,right:Int) -> Int {
    return left + right
}
//calculator function for subtract
func subtract (x:Int, y:Int) -> Int {
    return x - y
}

//calculator function for multiply
func multiply (x:Int, y:Int) -> Int {
    return x * y
}

//calculator function for divide
func divide (x:Int, y:Int) -> Int {
    return x / y
}

//generic math operation
func mathOperation(left : Int, right: Int, operation : (Int, Int) -> Int) -> Int {
    return operation(left, right)
}


//Array fun
func arrayAdd(numArray:[Int]) -> Int {
    var total = 0
    for x in numArray {
        total += numArray[x]
    }
    return total
}

func multArray(numArray: [Int]) -> Int{
    var total = 1
    for x in numArray {
        total *= numArray[x]
    }
    return total
}

func countArray(numArray: [Int]) -> Int {
    return numArray.count
}

func avgArray(numArray: [Int]) -> Int {
    let count = numArray.count
    var total = 0
    for x in numArray {
        total += numArray[x]
    }
    return total / count
}


//generic math operation
func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

//Points
func addPoints(point1: (x:Int, y:Int), point2: (x:Int, y:Int)) -> (Int, Int) {
    return (point1.x + point2.x, point1.y + point2.y)
}

func subtractPoints(point1: (x:Int, y:Int), point2: (x:Int, y:Int)) -> (Int, Int) {
    return (point1.x - point2.x, point1.y - point2.y)
}

func addDictionaries (dictionary1: [String: Double], dictionary2: [String: Double]) ->  [String: Double]{
    var toReturn = [String: Double]()
    if dictionary1.keys.contains("x") && dictionary2.keys.contains("x") {
        toReturn["x"] = dictionary1["x"]! + dictionary2["x"]!
    }
    return toReturn
}

func subtractDictionaries (dictionary1: [String: Double], dictionary2: [String: Double]) ->  [String: Double] {
    var toReturn = [String: Double]()
    if dictionary1.keys.contains("y") && dictionary2.keys.contains("y") {
        toReturn["y"] = dictionary1["y"]! + dictionary2["y"]!
    }
    return toReturn
}
