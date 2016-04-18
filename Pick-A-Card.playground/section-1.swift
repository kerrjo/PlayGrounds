 // Playground - noun: a place where people can play

import UIKit

var cardframe:CGRect = CGRectMake (0,0,754,1052)

let frontOfCardView = UIView (frame: cardframe)

if let aceOfHearts = UIImage( named:"Pick-A-Card-A-Hearts-990.png" )
{
    let cardView:UIImageView = UIImageView (image:aceOfHearts)
    cardView.frame = cardframe;
    frontOfCardView.addSubview(cardView)

}


let backOfCardView = UIView (frame: cardframe)


var displayframe:CGRect = cardframe

let displayCardView = UIView (frame:displayframe)

if let backOfCards = UIImage( named:"Bicycle Rider Backs.jpg" )
{
    let backCardView:UIImageView = UIImageView (image:backOfCards)
    let halfSize = backOfCards.size.width / 2
    var frame:CGRect = backCardView.frame
    frame.size = CGSizeMake(halfSize,backOfCards.size.height)
    
    //backCardView.contentMode =
    
    let backOfCardView = UIView (frame: frame)
    backOfCardView.addSubview(backCardView)
    var bounds:CGRect = backOfCardView.bounds
    bounds.offsetInPlace(dx: halfSize, dy: 0)
    
    //backOfCardView.bounds = bounds
    
    frontOfCardView.hidden = true
    
    displayCardView.addSubview(frontOfCardView)
    displayCardView.addSubview(backOfCardView)
    
}

func flipCardToFront () {

//    options: .TransitionFlipFromLeft  ,

    
    UIView.animateWithDuration(3.0, delay: 0.5,
        options: UIViewAnimationOptions.TransitionFlipFromTop  ,
        animations: {
            frontOfCardView.hidden = false
            backOfCardView.hidden = true
            
        }, completion: nil)
    


//    UIView.animateWithDuration(1.0, delay: 0.0, options:
//        .TransitionFlipFromLeft | .Repeat ,
//        animations: {
//            
//            frontOfCardView.hidden = true
//            backOfCardView.hidden = false
//            
//        }, completion: {
//            (value: Bool) in
//          
//            UIView.animateWithDuration(1.0, delay: 0.5, options:
//                .TransitionFlipFromLeft ,
//                animations: {
//                    
//                    frontOfCardView.hidden = true
//                    backOfCardView.hidden = false
//                    
//                }, completion: nil )
//            //                    (value: Bool) in
//            //                    backOfCardView.hidden = true
////            backOfCardView.hidden = true
//            
//    })
    
}

func flipCardToBack () ->Void  {
    
    UIView.animateWithDuration(1.0, delay: 1.5, options:
        .TransitionFlipFromLeft  ,
        animations: {
            frontOfCardView.hidden = true
            backOfCardView.hidden = false
            
        }, completion: nil)

}


//flipCardToBack

//displayCardView

let vc = UIViewController ()

vc.view.frame = displayframe
vc.view.addSubview(displayCardView)

flipCardToFront()








