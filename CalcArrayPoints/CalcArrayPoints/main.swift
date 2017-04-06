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
func add(p1:(x:Int,y:Int), p2:(x:Int,y:Int)) -> (Int, Int) {
    return (p1.x+p2.x,p1.y+p2.y)
}

func subtract(p1:(x:Int,y:Int), p2:(x:Int,y:Int)) -> (Int, Int) {
    return (p1.x-p2.x,p1.y-p2.y)
}

func add(p1: Dictionary <String, Int>?, p2: Dictionary <String, Int>?) -> Dictionary <String, Int>? {
    if(p1 == nil || p2 == nil){
        return nil
    }
    return [
        "x" : p1!["x"]! + p2!["x"]!,
        "y" : p1!["y"]! + p2!["y"]!,
    ]
    
}

func add(p1: Dictionary <String, Double>?, p2: Dictionary <String, Double>?) -> Dictionary <String, Double>? {
    if(p1 == nil || p2 == nil || (p1?.count)! <= 2||(p2?.count)! <= 2 ){
        return nil
    }
    
    return [
        "x" : p1!["x"]! + p2!["x"]!,
        "y" : p1!["y"]! + p2!["y"]!,
    ]
}

func subtract(p1: Dictionary <String, Int>?, p2: Dictionary <String, Int>?) -> Dictionary <String, Int>? {
    if(p1 == nil || p2 == nil || (p1?.count)! <= 2||(p2?.count)! <= 2 ){
        
        return nil
    }
    
    return [
        "x" : p1!["x"]! - p2!["x"]!,
        "y" : p1!["y"]! - p2!["y"]!,
    ]
    
}

func subtract(p1: Dictionary <String, Double>?, p2: Dictionary <String, Double>?) -> Dictionary <String, Double>? {
    if(p1 == nil || p2 == nil || (p1?.count)! <= 2||(p2?.count)! <= 2 ){
        
        return nil
    }
    return [
        "x" : p1!["x"]! - p2!["x"]!,
        "y" : p1!["y"]! - p2!["y"]!,
    ]
    
}
