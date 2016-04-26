//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
str = "Hello, Swift"

let contStr = str

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

var arrayints: [Int] = []
arrayints.append(0)

let floatFromLiteral = Float()
//let floatFromLiteral = Float(3.14)


var charList: [String] = []

charList.append("a")

charList.append("b")

let newcharList = charList.reverse()

newcharList.count
newcharList.first
let charListReverse = Array(newcharList)


let stringList = ["one", "two", "theree"]
stringList.reverse()


var str1:String?
var str2:String?
var str3:String?

str1 = "1213"
str2 = "abvcd"
str3 = "iou"


let strSum = str1! + str2! + str3!

let nameByParkingSpace = [13: "Alice", 27:  "Yannis"]
let spaceAssign: String? = nameByParkingSpace[13]

if let spaceAssign = nameByParkingSpace[13] {
    print("123")
}

for (key, value) in nameByParkingSpace{
    print(value)
}

enum BallType: Int {
    case football = 0
    case basketball
    case volleball
}

let favBall = BallType.football.rawValue
var ballToPlay : [BallType] = []
ballToPlay.append(.football)
