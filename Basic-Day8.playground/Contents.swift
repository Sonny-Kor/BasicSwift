import UIKit

// 함수, 메소드 정의
func myFunction(name: String) -> String{
    return "안녕하세요 \(name)입니다."
}

// 함수, 메소드를 호출한다. call
myFunction(name: "승재")

// 함수, 메소드 정의 2 (호출할때 매개변수 이름 변경가능)
func myFunctionSecond(with name: String) -> String{
    return "안녕하세요  \(name)입니다."
}

print(myFunctionSecond(with: "SJ"))

// 함수, 메소드 정의 3. (호출할 때 매개변수 이름 생략)
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요 \(name)입니다. "
}

print(myFunctionThird("승재"))

