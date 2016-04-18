/*:
 # Gradients in Swift
 
 CAGradientLayer is configured and added to views
 */
import UIKit
import QuartzCore



extension UIImage {
    enum ImageIdentifier : String {
    case imageSpark = "spark"
    case imageStar = "star"
    }
    
    convenience init?(imageIdentifier:ImageIdentifier){
        self.init(named:imageIdentifier.rawValue)
    }
}

let pic = UIImage(imageIdentifier: .imageStar)



/*:
 Color sets to be used in configuring gradient colors

 Arrays of UIColors
 */

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


/*:
 Generate a Gradient
 
 * Create a CAGradientLayer
 * Set colors
 * Set locations
 */
let mcaLayer = CAGradientLayer()

mcaLayer.colors = ColorSet().set2
mcaLayer.locations = [0.2, 0.4, 0.5 ]  // large bottom

//mcaLayer.colors = ColorSet().set4
//mcaLayer.locations = [0.3, 0.33,0.62, 0.79]  // large bottom

let mView = UIView(frame: CGRectMake(0, 0, 360, 360))
mcaLayer.frame = mView.frame
mView.backgroundColor = UIColor.whiteColor()
mView.layer.masksToBounds = true
mView.layer.insertSublayer(mcaLayer, atIndex: 0)

mView







