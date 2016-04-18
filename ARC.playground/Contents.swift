import UIKit
var str = "Hello, playground"

//: Strong reference cycle

func srfSample() {
    
    class Swimmer {
        var name: String?
        var lane: Lane?
    }
    
    class Lane {
        var number: Int?
        var swimmer: Swimmer?
    }
 
    var mary: Swimmer?
    var laneOne: Lane?
    
    mary = Swimmer()
    laneOne = Lane()
    
//    var mary = Swimmer()
//    var laneOne = Lane()
    
    laneOne!.number = 1;
    
    // Objects are connected in a strong reference cycle
    mary!.lane = laneOne!
    laneOne!.swimmer = mary!
    
    print("\(laneOne!.swimmer)")
    
    mary = nil
    laneOne = nil
    
}


/*:
 A weak reference is used on one of the connected Objects
 */

/**
 Break the strong reference cycle by using one weak reference
 */
func srfwSample() {
    
    class Swimmer {
        var name: String?
        var lane: Lane?
    }
    
    class Lane {
        var number: Int?
        weak var swimmer: Swimmer?
    }
    
    
    var mary: Swimmer?
    var laneOne: Lane?
    
    
    mary = Swimmer()
    laneOne = Lane()
    
    //    var mary = Swimmer()
    //    var laneOne = Lane()
    
    laneOne!.number = 1;
    
    // Objects are connected in a strong reference cycle
    mary!.lane = laneOne!
    laneOne!.swimmer = mary!
    
    print("\(laneOne!.swimmer)")
    
    mary = nil
    laneOne = nil
    
}


/*:
 Strong reference cycles created between two objects that connect
 instances of each other
 A Weak reference can be used if both can have no Value
 */

srfSample()

srfwSample()


/*:
 When one must have a A value
 Unowned reference is used
 Here, the unowned reference is by passing the reference on init
 So the value is set and the object instance gets fully initialized
 */

//: Credentials are generated for participants to an event
//: They are to be owned by only one person

class Participant {
    var name: String?
    var credential: Credentials?
    init(named: String){
        self.name = named
    }
}


class Credentials {
    var identifier: String?
    unowned let person: Participant
    
    init(id: String, person: Participant){
        self.identifier = id
        self.person = person
    }
    
}

// Lets Register someone

var joe: Participant? = Participant(named: "joe kerr")

joe!.credential = Credentials(id: "1111", person: joe!)

// Particpant is no longer involved in the event

joe=nil

joe

joe?.credential

//: When the participant exits the event the credentials are automatically destroyed








// Track / Audio

class Track {
    var audio: AudioFile?
    
}

class AudioFile {
    var track: Track?
    
}

