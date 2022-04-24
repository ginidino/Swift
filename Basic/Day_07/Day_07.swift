import UIKit

// Property observer
var myAge = 0 {
    willSet {
        print("The value is to be set / myAge: \(myAge)")
    }
    didSet {
        print("The value has been set / myAge: \(myAge)")
    }
}

print("myAge: \(myAge)")

myAge = 20
