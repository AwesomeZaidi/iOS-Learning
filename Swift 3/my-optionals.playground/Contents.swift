//: Playground - noun: a place where people can play

import UIKit

var lotteryWinning: Int?
lotteryWinning = 500
if lotteryWinning != nil {
    print(lotteryWinning!)
}

if let winnings = lotteryWinning {
    print(winnings)
}

class Car {
    var model: String?
    
}
var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}


vehicle = Car()
vehicle?.model = "bronco"
if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?
cars = [Car]()

//if let carArr = cars where carArr.count > 0 {
//    //only ex if not nil and if more than 0 elements
//    
//} else {
//    cars?.append(Car())
//    print(cars?.count)
//    
//}

class Person {
    var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
print(jack._age)
print(jack.age)






