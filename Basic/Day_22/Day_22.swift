import UIKit

// Protocol Inheritance
// The protocol itself does not create its own inheritance
// When a protocol is implemented, the setting of a variable or method of the protocol is forced.
// protocol can also be inherited
protocol Naming {
    var name : String { get set}
    func getName() -> String
}

protocol Aging {
    var age : Int { get set}
}

protocol UserNotifiable : Naming, Aging {
}

struct myFriend : UserNotifiable {
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
}

var Friend = myFriend(name: "Paul", age: 25)
print(Friend.getName())
print(Friend.age)
