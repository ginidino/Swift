# Day_5
    Unwrap Optional Variables

  code:
  
```swift
import UIKit

// Unwrap Optional Variables
// optional(?): Don't know if there is variable or not
// No ? means it has a value
var someVariables : Int? = nil

if someVariables == nil {
    someVariables = 90
}

print("someVariables: ", someVariables)

// unwrapping: To take off what's wrapped up as an optional
if let otherVariable = someVariables {
    print("There is a variable otherVariable: \(otherVariable)")
} else {
    print("There is no variable")
}
print("")

someVariables = nil
// If someVariables is empty, that is, if there is no value, put the value that I set as the default
let myValue = someVariables ?? 10
print("myValue: \(myValue)")
print("")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("first value: \(firstValue)")
print("second value: \(secondValue)")

// If you do not want to put a parameter, put '_' in front of the parameter of func unwrap(parameter: Int?)
unwrap(parameter: firstValue)
unwrap(parameter: secondValue)

func unwrap(parameter : Int?) {
    print("unwrap() called")
    // if there is no varibale, return
    // if parameter has value, put the value in unWrappedPara, otherwise go to else
    guard let unWrappedPara = parameter else {
        return
    }
    print("unWrappedPara: \(unWrappedPara)")
}
```
  output
```
someVariables:  Optional(90)
There is a variable otherVariable: 90

myValue: 10

first value: Optional(30)
second value: Optional(50)
unwrap() called
unWrappedPara: 30
unwrap() called
unWrappedPara: 50
```
