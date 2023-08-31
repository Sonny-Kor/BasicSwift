import UIKit

let someArray : [String] = ["1","2","3","4","5"]

var index : [String] = []

for (idx, value) in someArray.enumerated() {
    print("index : \(idx) , item : \(value) ")
    index.append("\(index).번 \(value)")
}
