# Day_20

  Struct method

```swift
import UIKit

// Struct method
// struct can have methods and can use member variables
struct Friend {
    var name : String
    var age : Int
    
    func sayHi() -> String {
        print("sayHi")
        return "Hello, I am \(name), and I am \(age)"
    }
}

var myFriend = Friend(name: "Paul", age: 25)
print(myFriend.sayHi())
```

  output

```
sayHi
Hello, I am Paul, and I am 25
```
