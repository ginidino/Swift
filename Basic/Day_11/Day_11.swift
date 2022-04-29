import UIKit

/*// () -> Void
func completion() {
    
}*/
// closure as parameter
// Method definition with a closure called completion as a parameter
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    // Run completion closure
    completion()
}

// Event termination can be known from the method callout
sayHi(completion: {
    print("2seconds have passed 1")
})

sayHi() {
    print("2seconds have passed 2")
}

sayHi {
    print("2seconds have passed 3")
}

/*// (String) -> Void
func completion(userInput : String) {
    
}*/
// closure that returns data as a parameter
func sayHiwithName(completion : (String) -> Void) {
    print("sayHiwithName() called")
    sleep(2)
    // closure를 실행과 동시에 데이터를 반환
    completion("Hi?")
}

sayHiwithName(completion: { (comment : String) in
    print("2seconds later, he said ", comment)
})

sayHiwithName(completion: { comment in
    print("2seconds later, he said ", comment)
})

sayHiwithName { comment in
    print("2seconds later, he said ", comment)
}

sayHiwithName {
    print("2seconds later, he said ", $0)
}

/*// (String, String) -> Void
func completion(first : String, second : String) {
    
}*/
// A closure that returns multiple data as a parameter
func sayHiwithFullName(completion : (String, String) -> Void) {
    print("sayHiwithFullName() called")
    sleep(2)
    // closure를 실행과 동시에 데이터를 반환
    completion("Hi?", "Welcome")
}

sayHiwithFullName { first, second in
    print("1st : \(first), 2nd : \(second)")
}

sayHiwithFullName { _, second in
    print("2nd : \(second)")
}

sayHiwithFullName {
    print("1st : \($0), 2nd : \($1)")
}

// optional
func sayHioptional(completion: (() -> Void)? = nil) {
    print("sayHioptional() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion closure 실행
    completion?()
}

sayHioptional()

sayHioptional(completion: {
    print("Hello")
})

/*// (Int) -> String
func transform(num : Int) -> String {
    return "Number : \(num)"
}*/

var myNums : [Int] = [0, 1, 2, 3, 4, 5]

var transformedNums = myNums.map { aNum in
    return "Number : \(aNum)"
}

var transformedNums2 = myNums.map { (aNum : Int) -> String in
    return "Number : \(aNum)"
}

var transformedNums3 = myNums.map {
    return "Number : \($0)"
}
