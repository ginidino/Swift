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
