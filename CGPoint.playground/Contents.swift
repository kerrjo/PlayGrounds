//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"


//: An array using _reduce_ on *CGPoint*
var points = [CGPoint(x: 7, y: 7),CGPoint(x: 2, y: 5)]

let result = points.reduce(0.0) {return $0 + $1.x }

result

let result2 = points.reduce(CGPoint(x:0.0, y:0.0)) {
    return CGPoint(x:$0.x + $1.x,y:$0.y + $1.y)
}

result2


//: Reverse string

let len = str.lengthOfBytesUsingEncoding(NSASCIIStringEncoding)

var probe = (len - 1)
var reverseStr : String = ""
for idex  in 0..<len {
//    let temp = String(str.startIndex.advancedBy(index))
//    let temp = String(str.startIndex.advancedBy(index))
    reverseStr += String(str.startIndex.advancedBy(probe--))
//    reverseStr += String(str[probe])
}

reverseStr

reverseStr = ""
var index = str.endIndex.predecessor()
while true {
    print(str[index])
    reverseStr += String(str[index])
    // Reduce index by 1 if still greater than 0.
    // ... Otherwise break out of loop.
    if index > str.startIndex {
        index = index.predecessor()
    }
    else {
        break
    }
}

reverseStr



//for var index = str.endIndex; index > str.startIndex; index = index.advanceBy(-1) {
//    
//    //    let temp = String(str.startIndex.advancedBy(index))
//    //    let temp = String(str.startIndex.advancedBy(index))
//    reverseStr += String(str.startIndex.advancedBy(probe--))
//    //    reverseStr += String(str[probe])
//}
