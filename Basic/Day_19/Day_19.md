# Day_19
Set

```swift
import UIKit

// Collection Type
// Set
// Set is similar to Array
// Set cannot contain duplicate values ​​like Array.
// No matter how much the same value is entered, only the existing value is maintained.
var myNumSet : Set<Int> = Set<Int>()
myNumSet.insert(1)
myNumSet.insert(2)
myNumSet.insert(2)
myNumSet.insert(3)
myNumSet.insert(3)

print("MyNumSet Count : \(myNumSet.count)")
print(myNumSet)
print()

// Unlike the Array, the order is not fixed
// The order of the output values ​​is different each time
for item in myNumSet {
    print("item : ", item)
}
print()

// In addition, it provides basic methods that Collection[Set, Array, Dictionary, Tuple] have.
var myStringSet : Set<String> = ["Anthoy", "David", "Paul"]
print(myStringSet.contains("Paul"))
print()

var setString : [String] = ["Anthoy", "David", "Paul"]
print(setString.contains("David"))
print()

// Find and delete the index you want
if let indexToRemove = myStringSet.firstIndex(of: "David") {
    print(indexToRemove)
    // Delete the desired index from the Set
    myStringSet.remove(at: indexToRemove)
}
print()
print(myStringSet)

```
output
```
MyNumSet Count : 3
[1, 2, 3]

item :  1
item :  2
item :  3

true

true

Index(_variant: Swift.Set<Swift.String>.Index._Variant.native(Swift._HashTable.Index(bucket: Swift._HashTable.Bucket(offset: 0), age: 1950942599)))

["Paul", "Anthoy"]
```
