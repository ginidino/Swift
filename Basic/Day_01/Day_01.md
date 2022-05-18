# Day_1 

  Conditional statements

  code: 

```swift
import UIKit

// Conditional statements
// Dark mode or not
var isDarkMode : Bool = true

// 조건
if (isDarkMode == true) {
    print("This is Dark Mode")
} else {
    print("This is not Dark Mode")
}

if isDarkMode != true {
    print("This is not Dark Mode")
} else {
    print("This is Dark Mode")
}

// isDarkMode == true
if isDarkMode {
    print("This is Dark Mode")
} else {
    print("This is not Dark Mode")
}

// isDarkMode != true
// isDarkMode == false
if !isDarkMode {
    print("This is not Dark Mode")
} else {
    print("This is Dark Mode")
}

var title : String = isDarkMode == true ? "This is Dark Mode" : "This is not Dark Mode"
// ? is like 'if' : is like 'else'
print("title: \(title)")

var titles : String = isDarkMode ? "This is Dark Mode" : "This is not Dark Mode"
print("title: \(titles)")

var titled : String = !isDarkMode ? "This is Dark Mode" : "This is not Dark Mode"
print("title: \(titled)")
```

  output

```
```
