import UIKit

func sayName(_ name: String){
    print("안녕 나는 \(name) 이라고 해")
}

func sayHi(_ name: inout String){
    name = "변경시킨 " + name
    // 매개변수의 name은 let으로 되어있어서 바꿀 수 없음 .
    // 매개변수의 값을 바꾸는 것을 inout이라고 부름
    print("안녕 나는 \(name) 이라고 해")
}
sayName("승재")
// Inout 을 사용하려면 & 사용해야함.
// "승재" 문자열 자체가 상수이기 떄문에 다른 변수에 담아서 전달해야함.
//sayHi(&"승재")
var name = "승재"
sayHi(&name)


