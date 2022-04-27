import UIKit

// closure that returns a String
let myName : String = {
    // myName으로 들어간다
    return "David"
}()
print(myName)

// definition of closure
// closure with parameters returned to String
// The string entered as a parameter can be received as a name, and the final output is the string
let myRealName : (String) -> String = { (name : String) -> String in
    return "my name is \(name)"
}

print(myRealName("Anthony"))

// Logic processing
// If there is no return value after receiving the parameter, make it void
// The closure has parameters and contains the logic below
let myRealNameLogic : (String) -> Void = { (name : String) in
    print("My name is \(name)")
}

print(myRealNameLogic("Paul"))
