import UIKit

protocol Naming {
    func getName() -> String
}
protocol Aging {
    func getAge() -> String
}

typealias Friendable = Naming & Aging

typealias FullNaming = Naming

struct Friend : Friendable {
    func getName() -> String {
        return ""
    }
    
    func getAge() -> String {
        return ""
    }
    
    var name : String
    var age : Int
    
}

typealias FriendName = String
var friendName : String = "승재"
typealias StringBLock = (String) -> Void
func sayHi(completion : (String) -> Void){
    print("hello")
    completion("T_T")
}
sayHi(completion: { saying in
    print("여기서 받음 : ", saying)
})

typealias MyType = MyClass.My_TYPE
class MyClass {
    enum My_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = My_TYPE.DOG
    
}
var myClass = MyClass()
myClass.myType = MyType.BIRD
