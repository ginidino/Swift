import UIKit

// generic - receive any data type
// Set which data types can be entered as generic
// When using generics, usually use <T>
struct myArray<someElement> { //<> this is generic
    
    // Member Variables
    // Empty array containing generics
    var elements : [someElement] = [someElement]()
    
    // Generators
    // _ : Skip parameter name by placing an underbar in front of it
    init(_ elements: [someElement]) {
        self.elements = elements
    }
}

struct Friend {
    var name : String
}

struct Coder {
    var name : String
}

var intArray = myArray([1,2,3])
print("someArray \(intArray)")

var stringArray = myArray(["a", "b", "c"])
print("someArray \(stringArray)")

let friend_01 = Friend(name: "Anthony")
let friend_02 = Friend(name: "Paul")
let friend_03 = Friend(name: "David")

var friendArray = myArray([friend_01, friend_02, friend_03])
print("someArray \(friendArray)")
