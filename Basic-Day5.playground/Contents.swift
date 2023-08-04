import UIKit

// 옵셔널이란 ?
// 값이 있는지 없는지 모른다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

// 언랩핑 unwrapping
if let otherVariable = someVariable {
    print("언래핑 되었다. 값이 있다. \(otherVariable)")
}else{
    print("값이 없다.")
}

someVariable = nil
//someVariable 이 비어있으면 , 즉 기본값으로 이놈을 넣겟다
let myValue = someVariable ?? 10
print(myValue)

var firstValue : Int? = 30
var secondValue : Int? = 50

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?){
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    guard let unWrappedParam = parameter else{
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

