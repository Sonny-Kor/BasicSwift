import UIKit

final class Friend {
    var name : String
    
    init(name : String){
        self.name = name
    }
}


class BestFriend : Friend {
    
    override init(name: String) {
        super.init(name: "베프 " + name)
    }
}

let myFriend = Friend(name : "승재")
let myBestFriend = BestFriend(name: "철수")

// 파이널 클래스
// 클래스앞에 ƒinal 키워드 붙일 경우 상속이 불가능해짐
