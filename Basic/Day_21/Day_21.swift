import UIKit

// protocol
// Usually, in the case of the delegate pattern, **delegate
// In swift language itself, protocol names are defined as **ing, **able, etc
protocol Naming {
    // promise to have these variables
    var name : String { get set}
    // Promise to have these methods
    func getName() -> String
}

// Because it implements the naming protocol
struct Friend : Naming {
    // If the name member variable is not set, an error occurs.
    var name : String
    // If the getName() method is not set, an error occurs.
    func getName() -> String {
        return "My friend is " + self.name
    }
}

var myFriend = Friend(name : "Paul")
print(myFriend.getName())
