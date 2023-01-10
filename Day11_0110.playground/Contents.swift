import UIKit


//() -> Void
//func completion(){
//
//}

//completion 이라는 클로저를 매개변수로 가지는
//메소드 정의
func sayHi(comletion: () -> Void){
    print("sayHi() called")
    sleep(2) //2초 잠깐 멈추기!
    //completion closer Started
    comletion()
}
////메소드 호출부에서 이벤트 종료를 알 수 있다.
//sayHi(comletion: {
//        print("2초가 지났다.1")
//})
//
//sayHi(){
//    print("2초가 지났다.2")
//}
//
//sayHi {
//    print("2초가 지났다.3")
//}

//(String) -> Void
//func completion(userinput : String){
//
//}

//매개변수로서 데이터를 반환하는 클로저
func sayHiwithName(completion: (String) -> Void){
    print("sayHiwithName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 코딩하고 있다.")
}

//sayHiwithName(completion: { (comment : String) in
//    print("2초뒤에 그가 말했다 : comment:",comment)
//})
//
//sayHiwithName(completion: {
//    comment in
//    print("2초뒤에 그가 말했다 : comment:",comment)
//})
//
//sayHiwithName{
//    comment in
//    print("2초뒤에 그가 말했다 : comment:",comment)
//}
//
//sayHiwithName{
//    print("2초뒤에 그가 말했다 : comment:",$0)
//}

//(String,String) -> Void
//func completion(first: String,second:String){
//}

//매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiwithFullName(completion: (String, String) -> Void){
    print("sayHiwithFullName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("코딩하고 있다.","이예지")
}

sayHiwithFullName{ first,second in
    print("first : \(first),second : \(second)")
}
//매개변수를 두개를 무조건 사용하기 싫은 경우 _ 사용
sayHiwithFullName{ _,second in
    print("second : \(second)")
}

sayHiwithFullName{
    print("first : \($0),second : \($1)")
}

func sayHiOptional(completion: (() -> Void)? = nil){
    print("sayHiOptional() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion?()
}

//sayHiOptional{
//
//}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다")
})
 
//(Int) -> String
//func transform(number: Int) -> String{
//    return "Number : \(number)"
//}

var myNumbers : [Int] = [0,1,2,3,4,5]

//var transformedNumbers =  myNumbers.map { aNumber in
//    return "number: \(aNumber)"
//}

//var transformedNumbers =  myNumbers.map { (aNumber: Int) -> String in
//    return "number: \(aNumber)"
//}

var transformedNumbers =  myNumbers.map {
    return "number: \($0)"
}

//var transformedNumbers =  myNumbers.map
