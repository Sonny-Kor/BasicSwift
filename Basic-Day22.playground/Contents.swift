import UIKit

protocol Naming {
    var name : String {get set}
    func getName() -> String
}


protocol Aging {
    var age : String {get set}
}

protocol UserNotifiable : Naming, Aging {
    
}
// class 에서 프로토콜
class BestFriend : UserNotifiable{
    var name: String = ""
    
    func getName() -> String {
        return self.name
    }
    
    var age: String = ""
    
}
//Struct 에서 프로토콜
struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        return (self.name)
    }
    
    var age: String
}

