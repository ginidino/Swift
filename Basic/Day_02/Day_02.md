# Day_2
  for-each 

  code:

```swift
import UIKit

// for each
// Array is in the collection (collection : Where the data is collected)
// Collection type: Array, Set, dictionary
// array
var arr : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in arr {
    print("Item: \(item)")
}

for item in arr where item > 5 {
    print("a number greater than: \(item)")
}

for item in arr where item % 2 == 0 {
    print("even number: \(item)")
}

for item in arr where item % 2 != 0 {
    print("odd number: \(item)")
}
```

  output

```
Item: 0
Item: 1
Item: 2
Item: 3
Item: 4
Item: 5
Item: 6
Item: 7
Item: 8
Item: 9
Item: 10
a number greater than: 6
a number greater than: 7
a number greater than: 8
a number greater than: 9
a number greater than: 10
even number: 0
even number: 2
even number: 4
even number: 6
even number: 8
even number: 10
odd number: 1
odd number: 3
odd number: 5
odd number: 7
odd number: 9
```
