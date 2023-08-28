import UIKit

enum MissmatchError: Error {
    case nameMissmatch
    case numberMissmatch
    
}
func test(){
    
}
// 에러를 던지는 메소드
func GuessMyName(name input: String) throws{
    print("guessMyName() called")
    if input != "승재"{
        print("X")
        throw MissmatchError.nameMissmatch
    }
    print("O")
}

/// Description : 번호를 맞추는 함수
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췃는지 여부
func GuessMyNumber(number input: Int) throws -> Bool{
    print("guessMyNumber() called")
    if input != 10{
        print("X")
        throw MissmatchError.numberMissmatch
    }
    print("O")
    return true
}

try? GuessMyName(name: "승재") // 에러가 있어도 아무처리 하지 않겟다.

//try! GuessMyName(name: "승재2") // 에러가 무조건 없을 거다 라는 뜻
do {
    try GuessMyName(name: "제용")
}catch{
    print("잡은 에러 \(error)")
}

do {
    let receivedValue = try GuessMyNumber(number: 10)
}catch{
    print("잡은 에러 \(error)")
}
