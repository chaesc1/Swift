import UIKit

// 카테고리를 나눈다라고 생각하면 된다.
enum School{
//    case elementary
//    case middle
//    case high
    case elementary,middle,high
}

//var은 변경이 가능한 변수,let은 변경이 불가능한 변수

let yourSchool = School.high

print("yourSchool : ",yourSchool)

enum Grade : Int{
    case first = 1
    case second = 2
}

let yourGrade = Grade.second.rawValue
print("yourGrade : \(yourGrade )")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String{
        switch self{
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "채정훈중학교")

print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")
