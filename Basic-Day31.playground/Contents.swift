import UIKit

let firendsArrry : [String] = ["철수","영희","수진","제임스","마크"]

let myFriends = firendsArrry.map { aFriend in
    return "내 친구다 ->" + aFriend
}

let numbers : [Int] = [22,33,44,55]

let myNumbers : [String] = numbers.map { (ANumber : Int) in
    return "내 숫자 -> \(ANumber)"
}
let myNumbers2 : [String] = numbers.map {
    return "내 숫자 -> \($0)"
}

let myDictionray = ["고양이":"야옹", "강아지":"멍멍" , "송아지":"음메"]
let myPets : [String] = myDictionray.map{
    return "\($0) -> \($1)"
}

let numberSet : Set<Int> = [1,1,1,2,3,4,5,6,7]
let myFavoriteNumbers : [Int] = numberSet.map{ aNumber in
    return aNumber * 10 
}
