//: Playground - noun: a place where people can play

import Cocoa

//let swiftString: String = "123"
let objcString: NSString = "123"

//let objcString: String = swiftString as NSString
let swiftString: String = objcString as String


swiftString == objcString

let array = [1, 2, 4, 8]
let objcArray: NSArray = array

let swiftArray: [Int] = objcArray as! [Int]


var wheatherTrue: Bool = true

wheatherTrue = false

func getError() -> String {
    if wheatherTrue {
        return "print"
    }
    else {
        fatalError("error")
    }
}

//getError()

//print(getError())





