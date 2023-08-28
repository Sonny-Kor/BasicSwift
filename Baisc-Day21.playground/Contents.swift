import UIKit

// 프로토콜 = 약속
// *delegate
// *ing , *able

// 프로토콜로 약속

protocol Naming {
    // 우린 이런 변수를 가지고 있을겁니다 라고 약속
    var name : String { get set }
    func getName() -> String
}

// Naming 이란 약속을 지켜야함 .
struct Friend : Naming{
    var name: String
    
    func getName() -> String {
        return "내 친구: " + self.name
    }
    
}
var myFriend = Friend(name: "승재")
myFriend.getName()
