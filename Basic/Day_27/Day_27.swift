import UIKit

// Higher Order Functions : taking a closure as a parameter
// A function that takes a function or closure as a parameter and returns what it received
// Sorted, Map, Filter, Reduce, etc. are built-in
func getName(_ name : String) -> String {
    return "My name is \(name)"
}

var getNameClosure : (String) -> String

func sayHi(getName : (String) -> String, name : String) -> String {
    return getName(name)
}

let result1 = sayHi(getName: getName(_:), name: "Paul")
print(result1)

let num = [3, 7, 4, -2, 9, -6, 10, 1]

let stringNum : [String] = num.map { (aNumber : Int) -> String in
    return "This is \(aNumber)"
}
print(stringNum)

let evenNum : [Int] = num.filter { aNumber in
    return aNumber % 2 == 0
}
print(evenNum)

let oddNum : [Int] = num.filter { aNumber in
    return aNumber % 2 != 0
}
print(oddNum)
print()

func getWord(_ firstWord : String, _ lastWord : String) -> String {
    return firstWord + " " + lastWord
}

func getWordTwice(_ firstWord : String, _ lastWord : String) -> String {
    return firstWord + " " + lastWord + " / one more time / " + firstWord + " " + lastWord
}

// Pass the function itself as a parameter
func saySomething(getWords : (_ first : String, _ last : String) -> String, firstInput : String, lastInput : String) -> String {
    // return the put function
    return getWords(firstInput, lastInput)
}

let output1 = saySomething(getWords: getWord(_:_:), firstInput: "Hello", lastInput: "I am Paul")
print(output1)

let output2 = saySomething(getWords: getWordTwice(_:_:), firstInput: "Hello", lastInput: "I am Paul")
print(output2)
