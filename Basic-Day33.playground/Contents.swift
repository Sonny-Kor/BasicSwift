import UIKit

let myFriends = [["a"],["b"],["c","d"],["e","f"],["g","h"]]

let flatMapped = myFriends.flatMap{ (item : [String]) in
    return item
}
print(flatMapped)
