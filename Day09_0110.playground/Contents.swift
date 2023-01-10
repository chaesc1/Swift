import UIKit

//제네릭 -> 어떠한 자료형이든 받을수 있다
struct MyArray<SomeElement>{
    //제네릭을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]()
    
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

struct Friend{
    var name : String
}

struct ChaeCoder{
    var name : String
}

var mySomeArray = MyArray([1,2,3])

print("mySomeArray : \(mySomeArray)")

var myStringArray = MyArray(["a","b","c"])
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "cahe")
let friend_02 = Friend(name: "sadasdasd")
let friend_03 = Friend(name: "casdasdasdasd")

var myFriendArray = MyArray([friend_01,friend_02,friend_03])
print("myFriendArray : \(myFriendArray)")
