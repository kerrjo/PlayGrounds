// Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"

let max = 10
func listnames (){
  let parseString = "joker"
  let names = ["joe","brendan","kyle"]
  for name in names {
    print(name)
    print(name + " " + parseString)
  }
}
listnames()
let label = "joe"
let amount = 99.9
let widthLabel = "label \(amount)"
let fpLabel = "\(label) \(amount * 2)"

var colors = ["red","green","blue"]
colors[1] = "yellow"

colors

var roles = [
  "admin" : "administrative responsibilities",
  "member" : "member responsibilities"
]
roles["staff"] = "staff tasks"

var activities = ["startup",""]
activities[1] = "shutdown"
activities[0] = "init"
activities


