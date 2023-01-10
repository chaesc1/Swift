import UIKit

struct YoutuberStruct{
    var name : String
    var subscriberCount : Int
}

var devChae = YoutuberStruct(name: "채정훈", subscriberCount: 99999)

var devChaeClone = devChae

print("값 넣기 전 devChaeClone.name : \(devChaeClone.name)")

devChaeClone.name = "adsad"

print("값 넣은 후 devChaeClone.name : \(devChaeClone.name)")

print("값 넣은 후 devChae.name : \(devChae.name)")
