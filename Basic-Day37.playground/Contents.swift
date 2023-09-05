import UIKit

// Getter, Setter

class Friend {
    var name : String = ""
    var age: Int
    
    var detailInfo : String = ""
    var info : String {
        get{
            return "내 친구 : \(name) 나이 : \(age)"
        }
        set {
            detailInfo = "info에서 설정됨: " + newValue
        }
    }
    init(_ name : String, _ age: Int){
        self.name = name
        self.age = age
    }
}

let myFriend = Friend("sj", 16)
myFriend.info = "gg"
myFriend.info
myFriend.detailInfo
