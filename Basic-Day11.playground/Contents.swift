import UIKit

//// completion 이라는클로저를 매개변수로 가지는 메소드
//func sayHi(completion: () -> Void){
//    print("sayHi() called")
//    sleep(2) // 2초 멈추기
//    // completion 클로저 실행
//    completion()
//}
//
//// 메소드 호출부에서 이벤트 종료를 알 수 있다.
//sayHi(completion: {
//    print("2초가 지났다. 1")
//})
//
//sayHi(){
//    print("2초가 지났다. 2")
//}
//
//sayHi {
//    print("2초가 지났다. 3")
//}
//
//// 매개변수로써 데이터를 반환하는 클로저
//func sayHiWithName(completion: (String) -> Void){
//    print("sayHiWithName() Called")
//    sleep(2)
//    // 클로저 실행과 동시에 데이터 반환
//    completion("completion called")
//}
//
//sayHiWithName(completion: { (comment : String) in
//    print("2초 뒤에 그가 말했다.", comment)
//})
//
//sayHiWithName(completion: { comment in
//    print("2초 뒤에 그가 말했다.", comment)
//
//})
//
//sayHiWithName{ comment in
//    print("2초 뒤에 그가 말했다.", comment)
//}
//sayHiWithName{
//    print("2초 뒤에 그가 말했다.", $0)
//}
//
//// 매개변수로서 데이터를 여러개 반환하는 클로저
//func sayHiWithFullName(completion : (String, String) -> Void){
//    print("sayHiWithFullName() called")
//    sleep(2)
//    completion("first data", "second data")
//}
//
//sayHiWithFullName(completion:  {(first, second : String) in
//    print("first, second : ", first, second)
//
//})
//
//sayHiWithFullName{ first, second in
//    print("첫번째 : \(first) , 두번째 : \(second)")
//}
//sayHiWithFullName{ _, second in
//    print( "두번째 : \(second)")
//}
//
//sayHiWithFullName{
//    print(" 첫번째 : \($0), 두번째 : \($1)")
//}
//
//func sayHiOptional(completion: (() -> Void)? = nil){
//    print("sayHiOptional() called")
//    sleep(2)
//    completion?()
//}
//
//sayHiOptional()
//sayHiOptional(completion: {
//    print("something")
//})

var myNumber : [Int] = [0,1,2,3,4,5]
var transformedNumbers = myNumber.map{ (aNumber: Int) -> String in
    return "숫자 \(aNumber)"
}

var transformedNumbers2 = myNumber.map{
    return "숫자: \($0)"
}
