import UIKit

// Reduce -> 합친다 라고 보면됨. 요소들을
struct Friend : Hashable {
    var name : String
    var age : Int
}
let myFriends = [
    Friend(name: "a", age: 1),
    Friend(name: "b", age: 2),
    Friend(name: "c", age: 3),
    Friend(name: "d", age: 3),
    Friend(name: "e", age: 5),
]
let totalAge = myFriends.reduce(10) { partialResult, aFriend in
    return partialResult + aFriend.age
}

let groupedFriends = myFriends.reduce(into: [:]) { partialResult, aFriend in
    partialResult[aFriend.age] = myFriends.filter{ $0.age == aFriend.age}
}
