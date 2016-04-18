//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"

struct Something: CustomStringConvertible {
    var name: String
    // CustomStringCovertible
    var description: String {
        return name
    }
}

//struct Things  {
struct Things: CustomStringConvertible  {
    private var someThings = [Something]()
    mutating func addSomething(s: Something) {
        someThings.append(s)
    }
    // CustomStringCovertible
    var description: String {
        return someThings.description
    }
}



extension Something: CustomPlaygroundQuickLookable {
    
    class View: UIView {
        let someView: UIView = {
            let view = UIView(frame:CGRectZero)
            view.layer.cornerRadius = 25
            view.backgroundColor = UIColor.blueColor()
            return view
        }()
        
        
        init(name: String) {
            super.init(frame: CGRectMake(0, 0, 200, 200))
            self .addSubview(someView)
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func layoutSubviews() {
            someView.frame = CGRect(x: bounds.midX - 20, y: bounds.midY - 20 , width: 40, height: 40)
            
        }
        
        
    }

    func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return PlaygroundQuickLook(reflecting: View(name: name))
    }
}


//let someView = View(name: "joker")


// Make Things
var things = Things()

let aThing = Something(name: "item1")

aThing

for thing in [aThing] {
    things.addSomething(thing)
}