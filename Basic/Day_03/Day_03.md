# Day_3

  Divide enum cases     
    - enum : divide type

  code: 
```swift
import UIKit

// enum cases
// Divide into categories
enum School {
    case elementary
    case middle
    case high
    // Can be done in one line
    // case elementary, middle, high
    // enum school only divides cases and does not have values
}

// var - possible to change the value
// let - impossible to change the value

let yourSchool = School.elementary
print("yourSchool: \(yourSchool)")
print("yourSchool:", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")

// If you want to get the value of an enum
print("yourGrade: \(yourGrade.rawValue)")

let yourGrades = Grade.first.rawValue
print("yourGrade: \(yourGrades)")
// To access the value of the enum, use .rawValue.

enum SchoolDetail {
    // You can get a value by giving the enum a name as a parameter
    case elementary(name : String)
    case middle(name : String)
    case high(name : String)
    
    // Returns a String, returns the getName of the SchoolDetatil enum
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name : "Samjeongja Middle School")
print("your middle school name: \(yourMiddleSchoolName)")

// only bring results
print("your middle school name: \(yourMiddleSchoolName.getName())")
```

  output

```
yourSchool: elementary
yourSchool: elementary
yourGrade: second
yourGrade: 2
yourGrade: 1
your middle school name: middle(name: "Samjeongja Middle School")
your middle school name: Samjeongja Middle School
```

