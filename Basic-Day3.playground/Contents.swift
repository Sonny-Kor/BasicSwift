import UIKit

// 학교 - 초, 중, 고
enum School {
    case elementary, middle, high
    
}

let yourSchool = School.high
print("yourSchool: ", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade.rawValue)")
print("yourGrade : \(yourGrade)")

let yourGrade2 = Grade.second.rawValue
print("yourGrade2 : \(yourGrade2)")

enum schoolDetail {
    case elementary(name : String)
    case middle(name : String)
    case high(name : String)
    
    func getName() -> String {
        switch self{
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case let .high(name):
            return name
        }
    }
}

let yourMiddleSchoolName = schoolDetail.middle(name: "중학교")
print("yourMiddleSchoolName : \(yourMiddleSchoolName)")
print("yourMiddleSchoolName : \(yourMiddleSchoolName.getName())")



