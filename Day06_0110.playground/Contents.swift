import UIKit

struct YoutuberStruct{
    var name : String
    var subscriberCount : Int
}

var devChae = YoutuberStruct(name: "채정훈", subscriberCount: 99999)

var devChaeClone = devChae

print("값 넣기 전 devChaeClone.name : \(devChaeClone.name)")

devChaeClone.name = "adsad"
//값 복사이기 때문에 둘의 값이 다르다
print("값 넣은 후 devChaeClone.name : \(devChaeClone.name)")

print("값 넣은 후 devChae.name : \(devChae.name)")

//클래스
class YoutuberClass{
    var name : String
    var subscriberCount : Int
    //생성자 - 즉 메모리에 올린다
    //init 으로 매개변수를 가진 생성자 메소드를 만들어야
    //매개변수를 넣어서 그 값을 가진 객체(object)를 만들수 있다.
    init(name: String, subscriberCount: Int){
        self.name = name
        self.subscriberCount = subscriberCount
    }
}

var leeyeji = YoutuberClass(name: "이예지", subscriberCount: 99999)
var leeyejiClone = leeyeji

print("값 넣기 전 leeyejiClone.name : \(leeyejiClone.name)")

leeyejiClone.name = "ghfhfhfhad"

print("값 넣은 후 leeyejiClone.name : \(leeyejiClone.name)")

print("값 넣은 후 leeyeji.name : \(leeyeji.name)")



