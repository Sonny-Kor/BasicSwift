import UIKit

var myArray = ["one", "2", "three", "4"]

let intArray = myArray.map{ item in
    return Int(item)
}
print(intArray)

// nill 이랑 Optional 처리해줌
let onlyIntArray = myArray.compactMap { item in
    return Int(item)
}
print(onlyIntArray)
