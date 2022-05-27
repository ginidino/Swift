# Day_8
    Set Parameter Name

  code:

```swift
import UIKit

// Set Parameter Name
// definition of functions, method
func myFunction(name: String) -> String{
    return "Hello! I am \(name)."
}

// call the function and method
myFunction(name: "Paul") // "Hello! I am Paul."

// change the name(String)
// To change the name(String), add something before name
func myFunctionSecond(with name: String) -> String{
    return "Hello! I am \(name)."
}

myFunctionSecond(with: "Anthony") // "Hello! I am Anthony."

// No parameter name when function is called
func myFunctionThird(_ name: String) -> String{
    return "Hello! I am \(name)."
}

myFunctionThird("Burno") // "Hello! I am Burno."

// print
print(myFunction(name: "Paul"))

print(myFunctionSecond(with: "Anthony"))

print(myFunctionThird("Burno"))
```

  output

```
Hello! I am Paul.
Hello! I am Anthony.
Hello! I am Burno.
```
