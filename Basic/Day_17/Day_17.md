# Day_17

  Error in Swift

  code:
```swift
import UIKit

// Error in Swift

// enum with data type error
enum misMatchError : Error {
    case nameMisMatch
    case numberMisMatch
}

// method that throws an error
// A method that throws an error with no return type
// Throws an error out via throws
// Throws in the return part of the method saying that the error is sent out
func guessMyName (name input : String) throws {
    print("guessMyName() called")
    
    // If the value received as a parameter does not match the input value,
    if input != "Paul" {
        print("It's wrong")
        //return
        // throw error
        throw misMatchError.nameMisMatch
    }
    print("It's right")
}

// A method that has a return type (returns something), that is, returns data.
/// guess the number
/// - Parameter input: user number input
/// - Returns: whether you got it right
func guessMyNumber (number input : Int) throws -> Bool {
    print("guessMyNumber() called")
    
    if input != 20 {
        print("It's wrong")
        //return
        throw misMatchError.numberMisMatch
    }
    print("It's right")
    return true
}

// If you do not want to handle the error even if there is an error: Put a ? after try
//try? guessMyName(name : "Anthoy")

// Putting ! after try means that there will be no errors here.
//try! guessMyName(name : "Anthoy")

// Error handling is possible by catching errors thrown externally through do-catch
do {
    try guessMyName(name : "Anthoy")
} catch {
    print("Error : \(error)")
}

print("")

do {
    let receivedValue = try guessMyNumber(number : 3)
} catch {
    print("Error : \(error)")
}
```

  output
```
guessMyName() called
It's wrong
Error : nameMisMatch

guessMyNumber() called
It's wrong
Error : numberMisMatch
```
