# Day_15
final class

  code:
```swift
import UIKit

// final class

// final keyword does not Inherit Other Classes
final class Friend {
    var name : String
    
    init(name : String) {
        self.name = name
    }
}

/*// Inherited as : Friend, but the Friend class is a final class, so a Compilation error occurs
class BestFriend : Friend {
    
    override init(name : String) {
        super.init(name: "Best Friend" + name)
    }
}*/

let myFriend = Friend(name: "Paul")
print("myFriend : \(myFriend.name)")

/*let myBestFriend = Friend(name: "Anthony")
print("myBestFriend : \(myBestFriend.name)")*/
```

  output
```
myFriend : Paul
```
