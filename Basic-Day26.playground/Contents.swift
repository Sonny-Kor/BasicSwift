import UIKit

struct Pet {
    init(){
        print("Pet이 생성 되었습니다. ")
    }
}

struct Friend {
    var name : String
    // 당장 메모리에 올리지 않고 Pet에 접근했을 때 메모리에 올림.
    lazy var pet : Pet = Pet()
    
    init(_ name : String){
        self.name = name
        print("Friend 생성됨.")
    }
}

var myFriend = Friend("승재")
myFriend.pet
