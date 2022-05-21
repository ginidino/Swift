# Day_04

  for loop

  code:

```swift
import UIKit

// for loop

// It is common to write 'i' because iterate means iteration.

// range
// 0...5 means 0,1,2,3,4,5
for i in 0...5 {
    print("index: \(i)")
}
print("")

// 0..<5 means 0,1,2,3,4
for i in 0..<5 {
    print("index: \(i)")
}
print("")

// 0..<5 print even number
for i in 0..<5 where i % 2 == 0{
    print("index: \(i)")
}
print("")

// array
// 2 ways to create an empty array
var randomInt: [Int] = []
var randomInts: [Int] = [Int]()

// Use '_' (underbar) when you do not want to use a variable for an element when using for loop
for _ in 0..<25 {
    let randomNum = Int.random(in: 0...100)
    randomInt.append(randomNum)
    randomInts.append(randomNum)
}
print("randomInt: \(randomInt)")
print("randomInts: \(randomInts)")
```

  output
 
 ```
 index: 0
index: 1
index: 2
index: 3
index: 4
index: 5

index: 0
index: 1
index: 2
index: 3
index: 4

index: 0
index: 2
index: 4

randomInt: [45, 73, 22, 49, 47, 60, 33, 90, 74, 8, 40, 30, 86, 85, 53, 44, 94, 91, 0, 6, 16, 15, 92, 22, 5]
randomInts: [45, 73, 22, 49, 47, 60, 33, 90, 74, 8, 40, 30, 86, 85, 53, 44, 94, 91, 0, 6, 16, 15, 92, 22, 5]
 ```
