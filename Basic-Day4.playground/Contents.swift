import UIKit


for i in 0...5{
    print(i)
}

for index in 0..<5{
    print(index)
}

var randomInts : [Int] = []

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print(randomInts)
