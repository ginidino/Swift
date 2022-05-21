# Day_25

  typealias

  code:

```swift
import UIKit

// typealias
protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging
typealias fullNaing = Naming

// struct Friend : Friendable = struct Friend : Naming & Aging
// Protocol alias can be set through typealias alias
struct Friend : Friendable {
    var name : String
    var age : Int
    func getName() -> String {
        return self.name
    }
    func getAge() -> Int {
        return self.age
    }
}

// Aliases can be set for all Collections types (data type, class, struct, closure, etc.)
typealias FriendName = String
var friendName : FriendName = "Paul Mitchell"

// Array
typealias Friends = [Friend]
var friendsArray : Friends = []

// Closure
typealias StringBlock = (String) -> Void
func sayHi(completion : StringBlock) {
    print("Hello")
    completion("nice to meet you")
}

sayHi(completion: { saying in
    print("greeting: ", saying)
})

// class, enum
typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MY_TYPE.DOG
}

var myClass = MyClass()
myClass.myType = MyType.DOG
print("myClass.myType: ", myClass.myType)

myClass.myType = MyType.CAT
print("myClass.myType: ", myClass.myType)

myClass.myType = MyType.BIRD
print("myClass.myType: ", myClass.myType)

```

  output

```
Hello
greeting:  nice to meet you
myClass.myType:  DOG
myClass.myType:  CAT
myClass.myType:  BIRD

```
