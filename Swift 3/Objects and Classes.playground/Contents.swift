//: Playground - noun: a place where people can play

import UIKit

//Classes have properties(vars), functions and the ability to be instantiated.
class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //accelerate vehicle
    }
    func brake() {
        //accelerate vehicle
    }
}
//Here we are instantiating an instance of the Vehicle class.
let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford) //Passed by Reference

print(ford.model)

var someonesAge = 20

func passByValue(age: Int) {
    let newAge = age
}

passByValue(age: someonesAge)