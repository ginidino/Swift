import UIKit

// Object Generators & Release Method - Put it on memory
// In the case of a class, a generators must be created. If you create a generator, it goes up to memory
class MyFriend {
    var name : String
    
    init(_ name : String = "No Name") {
        self.name = name
        print("init() Myfriend went up to memory - ", self.name)
    }
    // when memory is deleted
    // This is triggered when memory is deallocated
    // Those missing from memory ride the deinit
    deinit {
        print("deinit() Missing from memory - ", self.name)
    }
    
    // Work to verify deinit
    var callTime = 0
    let MAX_TIMES = 5
    
    static var instanceOfSelf = [MyFriend]()
    class func destroySelf(object: MyFriend) {
        instanceOfSelf = instanceOfSelf.filter { (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    func call() {
        callTime += 1
        print("called \(callTime)")
        
        if (callTime > MAX_TIMES) {
            MyFriend.destroySelf(object: self)
        }
    }
}

let myFriend = MyFriend("Paul")
let aFriend = MyFriend()

// Unmanaged.passUnretained(object).toOpaque()
// This can print the memory address of the object
let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
let secondObjectMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondObjectMemoryAddress)

weak var aFriendToBeDestroyed = MyFriend("Anthony")

if (aFriendToBeDestroyed != nil) {
    aFriendToBeDestroyed!.call()
} else {
    print("Object no longer in memory")
}
