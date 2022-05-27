# Day_9
  generic   
    - generic-receive any data type

  code:
```swift
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
print("someArray \(intArray)") // "someArray myArray<Int>(elements: [1, 2, 3])\n"

var stringArray = myArray(["a", "b", "c"])
print("someArray \(stringArray)") // "someArray myArray<String>(elements: ["a", "b", "c"])\n"

let friend_01 = Friend(name: "Anthony")
let friend_02 = Friend(name: "Paul")
let friend_03 = Friend(name: "David")

var friendArray = myArray([friend_01, friend_02, friend_03])
print("someArray \(friendArray)")
// "someArray myArray<Friend>(elements: [__lldb_expr_161.Friend(name: "Anthony"), __lldb_expr_161.Friend(name: "Paul"),
```

  output
```
someArray myArray<Int>(elements: [1, 2, 3])
someArray myArray<String>(elements: ["a", "b", "c"])
someArray myArray<Friend>(elements: [__lldb_expr_161.Friend(name: "Anthony"), __lldb_expr_161.Friend(name: "Paul"), __lldb_expr_161.Friend(name: "David")])
```
