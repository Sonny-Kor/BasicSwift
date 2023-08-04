import UIKit

// 콜렉션 : 데이터를 모아둔 것
// Array , Set, Dictionary , Tuple
// 배열 선언 방법
var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8,9, 10]

// 파이썬 for 문과 비슷함
for item in myArray{
    print("item : \(item)")
}

// 조건도 걸수있음
for item in myArray where item > 5{
    print("5보다 큰 수 \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수 \(item)")
}

print("%d" , 2)


