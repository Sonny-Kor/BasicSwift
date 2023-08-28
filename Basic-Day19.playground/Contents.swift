import UIKit

var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)
myNumberSet.insert(4)

myNumberSet.count

for item in myNumberSet {
    print("aNumber: ", item)
}

var myFriends : Set<String> = ["철수", "영희", "승재"]
var myBestFriend : [String] = ["철수", "영희", "승재"]

myFriends.contains("승재")
myBestFriend.contains("승재")

if let indexToRemove = myFriends.firstIndex(of: "승재"){
    print("indexToRemove",indexToRemove) // set에는 Index가 없음
    myFriends.remove(at: indexToRemove) // remove할떈 이렇게 . .
}

if let indexToRemove = myBestFriend.firstIndex(of: "승재"){
    print("indexToRemove",indexToRemove) // 배열에는 가능
}

if !myFriends.contains("승재"){
    print("내 친구중에 수지가 없다 . . .")
}
