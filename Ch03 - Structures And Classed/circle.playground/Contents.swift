//: Playground - noun: a place where people can play
import Cocoa

struct Vector {
    
    var x: Double
    var y: Double
    var radius: Double
    
    init(alfa: Double, radius: Double) {
        self.x = sin(alfa * M_PI / 180) * radius
        self.y = cos(alfa * M_PI / 180) * radius
        self.radius = radius
    }
    
}

for n in 0 ..< 20 {
    let vector = Vector(alfa: Double(n)*18.0, radius: 20.0)
    vector.x
    vector.y
}

for n in 0 ..< 360 {
    var vector = Vector(alfa: Double(n), radius: 1.0)
    vector.x
    vector.y
    vector.x * vector.x + vector.y * vector.y
}

//半圆，点越多越接近
for n in 0 ..< 201 {
    let y:Double = sqrt(10000 - (100 - Double(n)) * (100 - Double(n)))
}

for n in 0 ..< 180 {
    let y:Double = sin(Double(n) * M_PI / 180) * 10
}

