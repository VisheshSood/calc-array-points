//
//  main.swift
//  CalcArrayPoints
//
//  Created by Vishesh Sood on 4/4/17.
//  Copyright © 2017 Vishesh Sood. All rights reserved.
//

import Foundation

//calculator function for add
func add(left:Int, right:Int) -> Int {
    return left + right
}

//calculator function for subtract
func subtract(left:Int, right:Int) -> Int {
    return left - right
}

//calculator function for multiply
func multiply(left:Int, right:Int) -> Int {
    return left * right
}

//calculator function for divide
func divide(left:Int, right:Int) -> Int {
    return left / right
}

//Generic Math Operation
func mathOperation(left : Int, right: Int, operation : (Int, Int) -> Int) -> Int {
    return operation(left, right)
}


//Array fun
func add(array:[Int]) -> Int{
    var total = 0
    for value in array { total += value }
    return total
}

func multiply(array:[Int]) -> Int{
    var total = 1
    for value in array { total *= value }
    return total
}

func count(array:[Int]) -> Int {
    return array.count
}

func average(array:[Int]) -> Int {
    var total = 0
    for value in array { total += value }
    return total / array.count
}

func reduce(array:[Int], operation:([Int]) -> Int) -> Int {
    return operation(array)
}


//Points
func add(p1:(x:Int,y:Int), p2:(x:Int,y:Int)) -> (Int, Int) {
    return (p1.x + p2.x, p1.y + p2.y)
}

func subtract(p1:(x:Int,y:Int), p2:(x:Int,y:Int)) -> (Int, Int) {
    return (p1.x - p2.x, p1.y - p2.y)
}

func add(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
    }
}

func add(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
    }
}


func subtract(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return ["x" : p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
    }
}

func subtract(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    if (p1?["x"] == nil || p2?["x"] == nil || p1?["y"] == nil || p2?["y"] == nil) {
        return nil
    } else {
        return ["x" : p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
    }
}

