//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Shape 1
var length = 5
var width = 10

var area = length * width

//Shape 2
var length2 = 6
var width2 = 12

var area2 = length2 * width2

//Shape 3
var length3 = 10
var width3 = 8

var area3 = length3 * width3

//All this code above is SMELLY. This is why we have to use functions like this. length and width here are parameters also known as arguments. Also, functions are called fucntions in some languages and methods in other languages.
func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
    //Any code after a return statement will never be executed.
}

let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 6, width: 2)
let shape3 = calculateArea(length: 7, width: 5)

var bankAccountBalance = 500.00
var alienShoes = 350.00

func purchaseItem(currentBalance: inout  Double, itemPrice: Double) {
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice)")
        //return currentBalance - itemPrice
    } else {
        print("you are broke, learn how to save money")
        //return currentBalance
    }
}
//when you're doing an inout, put the amperstamp& symbol before you pass the variable and that lets you modify the variable directly
purchaseItem(currentBalance: &bankAccountBalance, itemPrice: alienShoes)

var retroLunchBox = 40.00

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: retroLunchBox)

