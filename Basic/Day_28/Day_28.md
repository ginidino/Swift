# Day_28
    Higher Order Functions - Sort, Sorted

  code:
```swift
import UIKit

// Higher Order Functions - Sort, Sorted
var myArr = [5, 18, 7, 1, 13, 88, 99, 25, 19, 23]

// sorted : return the elements of the sequence, sorted
// asceding order
var ascendingArr = myArr.sorted() // [1, 5, 7, 13, 18, 19, 23, 25, 88, 99]
print(ascendingArr)

// sort : Sorts the collection in place
myArr.sort() // [1, 5, 7, 13, 18, 19, 23, 25, 88, 99]

// descending order
var descendingArr = myArr.sorted(by: >)
print(descendingArr)

myArr.sort(by: >) // [99, 88, 25, 23, 19, 18, 13, 7, 5, 1]

var myArray = [5, 18, 7, 2, 13, 99, 100, 25, 19, 23]
```
  output
```
[1, 5, 7, 13, 18, 19, 23, 25, 88, 99]
[99, 88, 25, 23, 19, 18, 13, 7, 5, 1]
```
