import UIKit

class Friend{
    var name : String
    
    init(_ name : String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕 나는 \(self.name) 라고 해")
    }
}

class BestFriend : Friend {

    override init(_ name: String) {
        super.init("베프 " + name)
    }
    override func sayHi() {
        super.sayHi()
    }
}

let myFirend = Friend("승재")

myFirend.sayHi()

let myBestFirend = BestFriend("SJ")

myBestFirend.sayHi()
