import UIKit

//옵셔널 변수
//옵셔널이란?
//값이 있는지 없는지 모른다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: \(someVariable)")
//업랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것
if let otherVariable = someVariable{
    print("Unwraping -> values are exist. otherVariable : \(otherVariable)")
}
else{
    print("values are not exist")
}

someVariable = nil

//someVariable 이 비어있으면 즉 값이 없으면 기본값으로 얘를 넣겠다
let myValue = someVariable ?? 10
print("myValue: \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 20

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)
func unwrap(_ parameter: Int?){
    print("unwrap() called")
    //값이 없으면 리턴 해버린다
    //즉 지나가버림
    guard let unWrappedParam = parameter else{
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}
