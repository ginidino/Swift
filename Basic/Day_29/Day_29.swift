import UIKit

// private(set)
struct myPet {
    var title : String = "No title"
    // Set a value only in an internal struct or class
    private (set) var name : String = "No name"
    // When changing the value of a member variable in a struct,
    // you must put mutating in the method to change it.
    mutating func setName(to newName : String) {
        self.name = newName
    }
}

var getPet = myPet()
// It can be accessed from outside, but the value cannot be changed
print("Pet's name : ", getPet.name)
// Variables that are not private can access and change their values
print("Pet's title : ", getPet.title)
// Since it is private (set), the value can only be changed within a struct or class

print()
getPet.title = "Set Pet"
print("Pet's title : ", getPet.title)

// Cannot assign to property: 'name' setter is inaccessible
// If you try to change the value, i.e. set, an error is displayed
//getPet.name = "botong"

// use of internal methods
// value can be changed inside
getPet.setName(to: "botong")
print("Pet's name : ", getPet.name)
