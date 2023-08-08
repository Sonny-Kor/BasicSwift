import UIKit

class MyFriend {
    var name : String
    
    init(_ name: String = "이름없음"){
        self.name = name
        print("MyFriend 가 메모리에 올라간다.")
    }
    deinit{
        print("메모리 해제", self.name)
    }
    
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instanceOfSelf = [MyFriend]()
    class func destorySelf(object: MyFriend){
        instanceOfSelf = instanceOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destorySelf(object: self)
        }
    }
}

let myFriend = MyFriend("SJ")
let aFriend = MyFriend()

let anObjectMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()
let secondObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondObjectMemoryAddress)

weak var aFriendToBeDestroied = MyFriend("SJ")

if aFriendToBeDestroied != nil{
    aFriendToBeDestroied!.call()
}else{
    print("더이상 메모리에 없습니다.")
}
