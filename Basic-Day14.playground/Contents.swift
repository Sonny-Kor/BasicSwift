import UIKit


var myFriends = ["bestFriend" : "SJ",
                "highschool" : "JS"]

let myBestFriend = myFriends["bestFriend"]
let highShoolFriend = myFriends["highschol"]
let noFriend = myFriends["youtube", default: "none"]


myFriends["bestFriend"] = "SJJ"

myFriends["newFriend"] = "JSS"
myFriends.updateValue("girlFriend", forKey: "ss")

for i in myFriends{
    print(i)
}
