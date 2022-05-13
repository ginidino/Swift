import UIKit

// mutating in struct
class Friend {
    var name : String
    func changeName(newName : String) {
        self.name = newName
    }
    init(_ name : String) {
        self.name = name
    }
}

var myFriend = Friend("Mitchell")
print(myFriend.name)
myFriend.changeName(newName: "Paul Mitchell")
print(myFriend.name)
print()

// struct with member variable name
// Since a struct is different from a class that is a reference,
// the mutating keyword is required to change the value of a member variable of a struct structure
// struct automatically creates a constructor without creating a generators
struct BestFriend {
    var name : String
    // To change the value of name, the keyword mutating must be attached.
    // A method that changes the value of a member variable with the mutating keyword
    mutating func changeName(newName : String) {
        self.name = newName
        //print("newName: ", newName)
    }
    /*init(_ name : String) {
        self.name = name
    }*/
}

var myBestFriend = BestFriend(name: "Paul")
print(myBestFriend.name)

myBestFriend.changeName(newName: "Anthoy")
print(myBestFriend.name)
