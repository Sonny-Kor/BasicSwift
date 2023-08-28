import UIKit

struct Friend {
    var age : Int
    var name : String
    func sayHello() -> String{
        print("sayHello() called")
        return "저는 \(age)살, \(name)입니다."
    }
}

var myFriend = Friend(age: 24, name: "승재")

var value : String = myFriend.sayHello()
print(value)

