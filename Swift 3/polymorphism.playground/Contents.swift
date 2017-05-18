//: Playground - noun: a place where people can play

import UIKit
//Here's the advantage with working with a base class.
class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

//Instead of writing classes to find the area of a bunch of different shapes and thus creating bad code, more lines and more error possibilities; we just use polymorphism like this.
class Triange: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB)
    }
}
