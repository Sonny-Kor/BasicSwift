import UIKit

// String을 반환하는 클로저
let myName : String = {
    // myName 으로 들어간다
    return "SJ"
}()

print(myName)

// 클로저 정의
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("SJ")

let myRealNameLogic : (String) -> Void = { (name:String) in
    print("개발하는 \(name)")
}

myRealNameLogic("SJ")
