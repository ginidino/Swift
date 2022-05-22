# Day_26
    Lazy

  code:

```swift
import UIKit

// lazy
struct Pet {
    init() {
        print("Set the pet")
    }
}
// Class and struct are the same
struct Friend {
    var name: String
    // lazy: It is not loaded directly into memory, but when pet is used, it is loaded into memory when pet is accessed
    // have pet as a member variable
    // If the lazy keyword is used, the instance cannot be instantiated.
    lazy var pet : Pet = Pet()
    // Generators method
    init(_ name: String) {
        self.name = name
        print("Friend Created")
    }
}

// When there is no lazy keyword, when Friend is created, Pet is also instantiated.
var myFriend = Friend("Paul")
// output: Friend Created
// ->There is no output value because pet is not used

// When there is a lazy keyword, it must be created manually later
myFriend.pet // Pet

```

  output

```
Friend Created
Set the pet
```
