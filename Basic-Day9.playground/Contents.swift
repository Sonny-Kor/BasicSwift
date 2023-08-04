import UIKit

struct Freind{
    var name: String
}
struct PpackCoder{
    var name: String
}

// 제네릭을 통해 어떠한 자료형도 넣을 수 있음.
struct MyArray<T>{
    var elements : [T] = [T]()
    
    init(_ elements: [T]){
        self.elements = elements
    }
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray : \(mySomeArray)")


var myStringArray = MyArray(["가","나","다"])
print("mySomeArray : \(myStringArray)")

let firend_01 = Freind(name : "철수")
let firend_02 = Freind(name : "영희")
let firend_03 = Freind(name : "수진")
var myFriendArray = MyArray([firend_01,firend_02,firend_03])
print("mySomeArray : \(myFriendArray)")
