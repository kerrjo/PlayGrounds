//: [Previous](@previous)
import UIKit
import QuartzCore

var str = "Hello, playground"

struct ColorSet {
    let  set1 = [
        UIColor.redColor().CGColor,
        UIColor.whiteColor().CGColor,
        UIColor.blueColor().CGColor
    ]
    let  set2 = [
        UIColor.redColor().CGColor,
        UIColor.whiteColor().colorWithAlphaComponent(0.5).CGColor,
        UIColor.blueColor().CGColor
    ]
    let  set3 = [
        UIColor.redColor().CGColor,
        UIColor.clearColor().CGColor,
        UIColor.blueColor().CGColor
    ]
    
    let  setTop = [
        UIColor(red: 166.0/255, green: 199.0/255, blue: 234.0/255.0, alpha: 1.0).CGColor,
        UIColor.clearColor().CGColor
    ]
    
    let  set4 = [ // ground sky
        UIColor(red: 166.0/255, green: 199.0/255, blue: 234.0/255.0, alpha: 1.0).CGColor,
        // light blueish
        //        UIColor.redColor().CGColor,
        //        UIColor.orangeColor().CGColor,
        UIColor(red: 231.0/255, green: 152.0/255, blue: 93.0/255.0, alpha: 1.0).CGColor,
        // orangish
        //        UIColor.blueColor().CGColor
        
        UIColor(red: 231.0/255, green: 152.0/255, blue: 93.0/255.0, alpha: 1.0).CGColor,
        
        
        //        UIColor.blueColor().CGColor
        UIColor(red: 41.0/255, green: 70.0/255, blue: 20.0/255.0, alpha: 1.0).CGColor,
        // dark green ground
    ]
    
}



// build top

let gcolors = [ColorSet().set4[0], UIColor.clearColor()]

//let gcolors = [UIColor.darkGrayColor(), UIColor.clearColor()]


let leftStart:CGFloat = 0.5
// top left
let mcaLayer1 = CAGradientLayer()
mcaLayer1.colors = ColorSet().setTop
// mcaLayer1.colors = gcolors
mcaLayer1.locations = [0.4, 0.90]
mcaLayer1.startPoint = CGPointMake(leftStart, 0.0)
mcaLayer1.endPoint = CGPointMake( 1 - leftStart, 0.8)

// top right
let mcaLayer2 = CAGradientLayer()
mcaLayer2.colors = ColorSet().setTop
//mcaLayer1.locations = [0.3, 1.0]
mcaLayer2.startPoint = CGPointMake(1-leftStart, 0.0)
mcaLayer2.endPoint = CGPointMake(leftStart, 1.0)

// bottom right
let mcaLayer3 = CAGradientLayer()
mcaLayer3.colors = ColorSet().setTop
//mcaLayer1.locations = [0.3, 1.0]
mcaLayer3.startPoint = CGPointMake(1-leftStart, 1.0)
mcaLayer3.endPoint = CGPointMake(leftStart, 0.0)

// bottom left
let mcaLayer4 = CAGradientLayer()
mcaLayer4.colors = ColorSet().setTop
mcaLayer1.locations = [0.4, 0.90]
mcaLayer4.startPoint = CGPointMake(leftStart, 1.0)
mcaLayer4.endPoint = CGPointMake(1-leftStart, 0.1)



// apply layers
let mViewTop = UIView(frame: CGRectMake(0, 0, 360, 360))

mcaLayer1.frame = mViewTop.frame
mcaLayer2.frame = mViewTop.frame
mcaLayer3.frame = mViewTop.frame
mcaLayer4.frame = mViewTop.frame

mViewTop.backgroundColor = UIColor.whiteColor()
mViewTop.layer.masksToBounds = true
mViewTop.layer.insertSublayer(mcaLayer1, atIndex: 0)
//mViewTop.layer.insertSublayer(mcaLayer2, atIndex: 0)
//mViewTop.layer.insertSublayer(mcaLayer3, atIndex: 0)
mViewTop.layer.insertSublayer(mcaLayer4, atIndex: 0)

mViewTop




//let mCanvasView = UIView(frame: CGRectMake(0, 0, 360, CGRectGetWidth(mViewTop.frame)*2 ))
//
//mCanvasView.addSubview(mViewTop)
//mView.center = CGPointMake( CGRectGetWidth(mViewTop.frame)/2 ,
//                            CGRectGetWidth(mViewTop.frame) + CGRectGetWidth(mViewTop.frame)/2 + 2 )
//mCanvasView.addSubview(mView)
//
//mCanvasView



//: [Next](@next)
