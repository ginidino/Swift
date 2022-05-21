import UIKit

// protocol generic associatedtype
protocol petHaving {
    // The associatedtype allows to have any datatype as a generic
    associatedtype T
    var pets : [T] { get set }
    mutating func getNewPet(_ newPet : T)
}
// Configure protocol method logic with extension
extension petHaving {
    mutating func getNewPet(_ newPet : T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}
// Friend struct with petHaving imeplements
struct Friend : petHaving {
    // Array data type can be used as Animal enum
    var pets: [Animal] = []
}
// Family struct with petHaving imeplements
struct Family : petHaving {
    // Array's data type is String
    var pets: [String] = []
}

var myFriend = Friend()
myFriend.getNewPet(Animal.bird)
myFriend.getNewPet(Animal.cat)
myFriend.getNewPet(Animal.dog)
myFriend.pets //[bird, cat, dog]
//print(myFriend.pets)

var myFamily = Family()
myFamily.getNewPet("rabbit")
myFamily.getNewPet("turtle")
print(myFamily.pets)
