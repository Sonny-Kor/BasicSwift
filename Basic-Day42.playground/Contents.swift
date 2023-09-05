import UIKit

// 콜렉션 ->  list [] , set <> , dict [:]
let myFriends = ["철수", "영희", "수잔"]
let otherFriends = ["제임스", "존슨", "존시나"]

let otherSetFriends : Set<String> = ["제임스", "존슨", "존시나"]
// let 이기 떄문에 append 를 사용할 수 없는 상황에서 합칠때 사용
let totalFriends = myFriends + otherFriends

let setPlusList = otherSetFriends + myFriends

 
