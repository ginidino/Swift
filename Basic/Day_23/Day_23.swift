import UIKit

// Protocol Extension

protocol Naming {
    var lastname : String { get set }
    var firstname : String { get set }
    func getName() -> String
    // Protocol methods must not have bodies
}
// Add the method to protocol through extension
extension Naming {
    func getFullName() -> String {
        return self.lastname + self.firstname
    }
}
// struct that implements the Naming protocol
struct Friend : Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname:"Paul", firstname:"Mitchell")

print("name", myFriend.getName())

// Although it is not in the Friend struct,
// it is possible to check that the method has been added through protocol extension
print("Full Name: \(myFriend.getFullName())")
