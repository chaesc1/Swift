import UIKit

//객체 생성자
class MyFriend{
    var name : String
    
    init(_ name: String = "이름없음") {
        self.name = name
        print("init() -> MyFriend가 메모리에 올라갔다.")
    }
    deinit {
        print("deinit() -> 메모리에서 사라짐->",self.name)
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    class func destroySelf(object: MyFriend){
        instancesOfSelf = instancesOfSelf.filter{(aFriend: MyFriend) in
            aFriend !== object
        }
    }
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}

let myFriend = MyFriend("chae")
let aFriend = MyFriend()

let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
let SecondObjectMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(SecondObjectMemoryAddress)

weak var aFriendToBeDestoried = MyFriend("개발하는 채정훈")

if aFriendToBeDestoried != nil{
    aFriendToBeDestoried!.call()
}
else{
    print("더이상 메모리에 없습니다.")
}
