//: Playground - noun: a place where people can play

import UIKit



//// Value Types vs. reference types


//// Reference types

// assign-by-reference.

struct Color: CustomStringConvertible {
    var red, green, blue: Double
    
    var description: String {
        return "r: \(red) g: \(green) b: \(blue)"
    }
}

// Preset colors
extension Color {
    static var black = Color(red: 0, green: 0, blue: 0)
    static var white = Color(red: 1, green: 1, blue: 1)
    static var blue = Color(red: 0, green: 0, blue: 1)
    static var green = Color(red: 0, green: 1, blue: 0)
}

// Paint bucket abstraction
class Bucket {
    var color: Color
    var isRefilled = false
    
    init(color: Color) {
        self.color = color
    }
    
    func refill() {
        isRefilled = true
    }
}


let azurePaint = Bucket(color: .blue)
let wallBluePaint = azurePaint
wallBluePaint.isRefilled
azurePaint.refill()
wallBluePaint.isRefilled



//// Value types

// assign-by-copy


extension Color {
    mutating func darken() {
        red *= 0.9; green *= 0.9; blue *= 0.9
    }
}

var azure = Color.blue
var wallBlue = azure
azure
wallBlue.darken()
azure



//// Defining value semantics


//var x = MysteryType()
//var y = x
//exposeValue(x) // => initial value derived from x
//// {code here which uses only y}
//exposeValue(x) // => final value derived from x
//// Q: are the initial and final values different?



//// When to prefer value semantics

