import UIKit

class Friend {
    var name : String
    func changeName(newname: String){
        self.name = "ㅎㄹㄹㄹ! " + self.name
    }
    init(_ name : String){
        self.name = name
    }
}

var myFriend = Friend("승재")
myFriend.changeName(newname: "SJ")

struct BestFriend {
    var name : String
    
    mutating func changeName(newName: String){
        self.name = newName
        // class 는 주소 , struct는 값이기 떄문에 접근 불가능 .
        // 따라서 함수 앞에 mutating 이라고 붙여줘야함 .
//        print("newName : \(newName)")
    }
}
var bestFriend = BestFriend(name: "승재")
bestFriend.changeName(newName: "SJ")

