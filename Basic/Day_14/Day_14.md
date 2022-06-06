# Day_14
    Dictionary

  code:
```swift
import UIKit

// Dictionary - consist of key and value
// 구성 - key : value
// A pair of dictionaries with key values - similar to lockers
var myFriend = ["bestfriend" : "Paul", "highSchool" : "Daivd"]

/*let myBestFriend = myFriend["bestfriend"]
let highSchoolFriend = myFriend["highSchool"]
let youtubeFriend = myFriend["youtube", default: "No Friend"]

// Change the value
myFriend["bestfriend"] = "Anthoy"

let myBF = myFriend["bestfriend"]

// input the new data
myFriend["newFriend"] = "Tom"
let newFriend = myFriend["newFriend"]

myFriend.updateValue("Luna", forKey: "girlFriend")
let girlFriend = myFriend["girlFriend"]

myFriend.updateValue("Jack", forKey: "bestfriend")
let myBF2 = myFriend["bestfriend"]*/



if let myBestFriend = myFriend["bestfriend"] {
    print(myBestFriend)
}

if let highSchoolFriend = myFriend["highSchool"] {
    print(highSchoolFriend)
}

// Set to get default value if no value is saved with the key you look for when pulling out
let youtubeFriend = myFriend["youtube", default: "No Friend"]
print(youtubeFriend)

// 값을 추가 및 변경 가능
myFriend["bestfriend"] = "Anthoy"
let myBF = myFriend["Anthoy", default: "No Friend"]
print(myBF)

myFriend["newFriend"] = "Tom"
let newFriend = myFriend["newFriend", default: "No Friend"]

myFriend.updateValue("Luna", forKey: "girlFriend")
let girlFriend = myFriend["girlFriend", default: "girlFriend"]
print(girlFriend)

myFriend.updateValue("Jack", forKey: "bestfriend")
let myBF2 = myFriend["bestfriend", default: "girlFriend"]
print(myBF2)

// emptyDictonary
let emptyDictionary : [String : Int] = [:]
let emptyDictionary2 = [String : Int]()
let emptyDictionary3 : [String : Int] = Dictionary<String, Int>()

myFriend.count

for item in myFriend {
    print("item : ", item)
}
```

  output
```
Paul
Daivd
No Friend
No Friend
Luna
Jack
item :  (key: "newFriend", value: "Tom")
item :  (key: "bestfriend", value: "Jack")
item :  (key: "highSchool", value: "Daivd")
item :  (key: "girlFriend", value: "Luna")
```
