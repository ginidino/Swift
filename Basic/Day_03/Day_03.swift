import UIKit

// enum cases
// Divide into categories
enum School {
    case elementary
    case middle
    case high
    // 한줄로도 가능
    //case elementary, middle, high
    // enum School은 케이스만 나누웠고 값을 가지고 있는 것은 아님
}

// var - possible to change the value
// let - impossible to change the value

let yourSchool = School.elementary
print("yourSchool: \(yourSchool)")
print("yourSchool:", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")

// enum이 가지고 있는 값을 가져오고 싶을 경우
print("yourGrade: \(yourGrade.rawValue)")

let yourGrades = Grade.first.rawValue
print("yourGrade: \(yourGrades)")
// enum이 가지고 있는 값에 접근 하기 위해선 .rawValue를 해주면 된다

enum SchoolDetail {
    // enum에 parameter로 이름을 정해줘서 값을 가져올 수 있다
    case elementary(name : String)
    case middle(name : String)
    case high(name : String)
    
    // String을 반환한다, SchoolDetatil enum이 가지고 있는 getName을 반환
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name : "Samjeongja Middle School")
print("your middle school name: \(yourMiddleSchoolName)")

// 결과값만 가지고 오는 경우
print("your middle school name: \(yourMiddleSchoolName.getName())")
