import UIKit

protocol Talking {
    var saying : String { get set}
    func sayHi()
}

class BestTalk : Talking {
    var saying: String = "best talk"
    
    func sayHi() {
        print("허허 잘지냇니")
    }
}

class OldTalk : Talking{
    var saying: String = "old talk"
    
    func sayHi(){
        print("ㅎㅇ요")
    }
}

class Friend {
    var talkProvider : Talking
    var saying : String{
        get{
            talkProvider.saying
        }
    }
    init(provider : Talking){
        self.talkProvider = provider
    }
    
    func sayHi(){
        talkProvider.sayHi()
    }
}
let myBestFriend = Friend(provider: OldTalk())
myBestFriend.sayHi()
myBestFriend.saying


let myOldFriend = Friend(provider: BestTalk())
myOldFriend.sayHi()
myOldFriend.saying

 
