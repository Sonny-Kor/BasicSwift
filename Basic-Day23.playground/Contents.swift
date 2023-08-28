import UIKit

protocol Naming {
    var lastname : String { get set }
    var firstname: String {get set}
    func getName() -> String
}

extension Naming {
    // 새로운 로직이 들어간 함수 프로토콜 생성
    func getFullName() -> String{
        return self.lastname + " " + self.firstname
    }
    // 기존 프로토콜 수정 가능
    func getName() -> String{
        return self.lastname + " " + self.firstname
    }
}

struct Friend : Naming {
    var lastname: String
    
    var firstname: String
    
    func getName() -> String {
        return self.lastname + " " + self.firstname
    }
}

let myFriend = Friend(lastname: "Son", firstname: "SeungJae")
myFriend.getFullName()
