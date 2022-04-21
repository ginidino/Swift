import UIKit

// for loop

// 반복을 뜻하는 iterate 때문에 i로 쓰는게 일반적

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
// 빈 배열을 만드는 2가지 방법
var randomInt: [Int] = []
var randomInts: [Int] = [Int]()

// 반복문을 돌릴때 요소에 대한 변수를 사용하고 싶지 않을 땐 '_'(underbar)를 사용
for _ in 0..<25 {
    let randomNum = Int.random(in: 0...100)
    randomInt.append(randomNum)
    randomInts.append(randomNum)
}
print("randomInt: \(randomInt)")
print("randomInts: \(randomInts)")
