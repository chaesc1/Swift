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
    
}
