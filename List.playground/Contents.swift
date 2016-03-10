//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"

//: ## Single Liked List
//: * insert
//: * delete

class Node {

    var data: Int?
    var next: Node?
    
    func insertAfter(addNode: Node) {
        if let nextNode = next {
            addNode.next = nextNode
        }
        self.next = addNode
    }
    
    func deleteAfter() {
        if let deleteNode = next {
            if let deleteNodeNext = deleteNode.next {
                self.next = deleteNodeNext
            } else {
                self.next = nil
            }
        } else {
            print("there is no next node")
        }
    }

    
    /**
     - paramaters:
        - node: node to start deleting 
     */
    func deleteRemainingFrom(inout thisNode: Node?) -> Node? {
        
        while thisNode != nil {
            print("deleting \(thisNode!.data)")
            thisNode = deleteRemainingFrom(&thisNode!.next)
        }
//        thisNode = nil
        return thisNode

    }

    
    func delete() {
        if let nextNode = next {
            self.data = nextNode.data
            if let nextNextNode = nextNode.next {
                self.next = nextNextNode
            } else {
                self.next = nil
            }
        } else {
            
            print("there is no next node")
        }
    }

}

/*:
Initialize three nodes
And append into into a linked list

*/

var n: Node? = Node()
n!.data = 7
var a: Node? = Node()
a!.data = 3
var b: Node? = Node()
b!.data = 2

print(n!.data)
print(a!.data)
print(b!.data)

n!.insertAfter(a!)
a!.insertAfter(b!)

var home: Node? = n!

var c: Node? = Node()
c!.data = 8

a?.insertAfter(c!)

n = nil
a = nil
b = nil
c = nil

//b!.delete()


//: Iterate throught the *linked list* print data

var probe:Node? = home

print("iterate")
while let iprobe = probe {
    
    if let probeData = iprobe.data {
        print (probeData)
    }
    probe = iprobe.next
}

probe = home

home = home!.deleteRemainingFrom(&probe)


//a.delete()
//probe = home
//print("iterate")
//while let iprobe = probe {
//    if let probeData = iprobe.data {
//        print (probeData)
//    }
//    probe = iprobe.next
//}

//probe = home
//b.delete()
//print("iterate")
//while let iprobe = probe {
//    if let probeData = iprobe.data {
//        print (probeData)
//    }
//    probe = iprobe.next
//}

//probe = home
//n.delete()
//print("iterate")
//while let iprobe = probe {
//    if let probeData = iprobe.data {
//        print (probeData)
//    }
//    probe = iprobe.next
//}

//probe = home
//a.deleteAfter()
//print("iterate")
//while let iprobe = probe {
//    if let probeData = iprobe.data {
//        print (probeData)
//    }
//    probe = iprobe.next
//}

//probe = home
//print("iterate")
//while let iprobe = probe {
//    probe = iprobe.next
//    iprobe.delete()
//}
//home = nil

//probe = home
//if probe == nil {
//    print("empty list")
//} else {
//    print("deleting all")
//    
//    while let iprobe = probe {
//        if let probeData = iprobe.data {
//            print ("delete \(probeData)")
//        }
//        probe = iprobe.next
//        iprobe.delete()
//    }
//    
//    home = nil
//}



probe = home
print("iterate")
while let iprobe = probe {
    if let probeData = iprobe.data {
        print (probeData)
    }
    probe = iprobe.next
}

