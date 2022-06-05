# Day_13
    inheritance

  code:
```swift
import UIKit

// inheritance
class Friend {
    var name : String
    
    init(_ name : String) {
        self.name = name
    }
    
    func sayHi() {
        print("Hello, I am \(self.name)")
    }
}

// inheritance
class BestFriend : Friend {
    // Bring the parents class method through override
    override init(_ name: String) {
        // 부모로 부터 상속을 받았을때는 super.init을 호출해줘야 된다
        // super 키워드로 부모의 메소드를 사용
        super.init("Best Friend, " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("Paul")
myFriend.sayHi()

let myBestFriend = BestFriend("David")
myBestFriend.sayHi()

myBestFriend.name
```

  output
```
Hello, I am Paul
Hello, I am Best Friend, David
```
