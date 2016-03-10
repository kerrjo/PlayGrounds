//: Iteration *arrays* and *dictionaries*

import UIKit
var str = "Hello, playground"



let myArr = ["one", "two","three"]

var ind = 0
for item in myArr {
    print ("\(item) \(ind)")
    ind++
}

//: ---
//: Array
var arr: [String] = ["go","joe"]

for (ind,item) in myArr.enumerate() {
    print ("\(item) \(ind)")
}

//: Dictionary
let myDict = [1 : "one", 2: "two",3:"three"]

for item in myDict {
    print ("\(item)")
}

for (index,name) in myDict.enumerate() {
    print ("\(index)")
}


