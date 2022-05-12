import UIKit

// parameter inout
// inout: change the value of a parameter
func sayName(_ name : String) {
    print("Hello? I am \(name)")
}

// Values ​​passed as parameters to methods cannot be changed
// However, it can be changed if the inout keyword is used
// Since name is let, (unchangeable state), in order to change the name,
// you must put the inout keyword before the data type of the parameter
func sayHi(_ name : inout String) {
    name = "Paul " + name
    print("Hello? I am \(name) ")
}

sayName("Mitchell")

// Since the value entered into the inout method must be changeable
// it cannot directly put the value into the method, but put the value in the variable once and then put the value
var name = "Mitchell"

// An inout parameter is indicated by putting an & in front of the variable
sayHi(&name)
