import UIKit

//String 을 반환하는 클로저
let myName : String = {
    //myName으로 들어간다
    return "chae"
}()

print(myName)
//스트링을 매개변수로 받아 스트링으로 내뱉는 클로저가 된다.
//클로저 정의 매개변수를 갖고 반환값을 갖는.
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("chaeadasd")
//print(myRealName("asdadasd"))
//반환하는 값이 없다면 Void
let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("이예지")
