import UIKit

class Friend {
    func sayHi() {
        print("hello?")
    }
    // 해당 인스턴스가 생성되지않아도ㅓ 가능
    class func sayBye(){
        print("bye")
    }
    static func sayhoho(){
        print("hoho")
    }
}

class BestFriend : Friend {
    class override func sayBye() {
        print("covered - bye")
    }
    func sayhoho(){
        print("covered - hoho")
    }
}

let myFriend = Friend()
myFriend.sayHi()
Friend.sayBye()
Friend.sayhoho()

BestFriend.sayBye()
BestFriend.sayhoho()

/*
 공통점 : 메모리에 올리지 않고 사용할 수 있다
 차이점 : static에는 final이라는 의미가 포함되어있어 오버라이드가 불가능함

 사용처 : 공통적으로 사용되는 메소드들을 유틿클래스로 빼서 사용함
 */
