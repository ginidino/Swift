import UIKit

// Set Parameter Name
// definition of functions, method
func myFunction(name: String) -> String{
    return "Hello! I am \(name)."
}

// call the function and method
myFunction(name: "Paul")

// change the name(String)
// To change the name(String), add something before name
func myFunctionSecond(with name: String) -> String{
    return "Hello! I am \(name)."
}

myFunctionSecond(with: "Anthony")

// No parameter name when function is called
func myFunctionThird(_ name: String) -> String{
    return "Hello! I am \(name)."
}

myFunctionThird("Burno")

// print
print(myFunction(name: "Paul"))

print(myFunctionSecond(with: "Anthony"))

print(myFunctionThird("Burno"))
