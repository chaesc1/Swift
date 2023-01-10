import UIKit

//상속
class Friend{
    var name : String
    
    init(_ name: String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕?! 난 \(self.name) 라고 해")
    }
}

class BestFriend : Friend{//override
    override init(_ name: String) {
        
        //override 로 부모의 메소드를 가져왔다
        super.init("베프 "+name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}
 
let myFriend = Friend("이예지")

myFriend.sayHi()

let myBestFriend = BestFriend("채정훈")

myBestFriend.sayHi()

myBestFriend.name
