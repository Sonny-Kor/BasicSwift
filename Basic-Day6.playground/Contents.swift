import UIKit

// 유튜버 (데이터) 모델 -struct / 구조체
struct YoutuberStruct{
    var name : String
    var subscriberCount : Int
}

var devSj = YoutuberStruct(name: "SeungJae", subscriberCount: 99)

var devSjClone = devSj

print("devSj.name : \(devSj.name)")
print("devSjClone.name : \(devSjClone.name)")

devSj.name = "변경된 SJ"

print("devSj.name : \(devSj.name)")
print("devSjClone.name : \(devSjClone.name)")

// 값복사 !

// Class 모델
class YoutuberClass {
    var name : String
    var subscriberCount : Int
    // 생성자
    init(name: String ,subscriberCount: Int ){
        self.name = name
        self.subscriberCount = subscriberCount;
    }
}

print("============")
let devJy = YoutuberClass(name: "Jy", subscriberCount: 99)
let devJyClone = devJy

print("devJy.name : \(devJy.name)")
print("devJyClone.name : \(devJyClone.name)")

devJy.name = "변경된 Jy이름"

print("devJy.name : \(devJy.name)")
print("devJyClone.name : \(devJyClone.name)")

print("============")
class Human {
    var name: String = ""
    init(name: String) {
        self.name = name
    }
}

let human = Human(name: "시리")
let copyHuman = human

print("human: \(human.name)") //시리
print("copyHuman: \(copyHuman.name)") //시리

copyHuman.name = "빅스비"

print("human: \(human.name)") //빅스비
print("copyHuman: \(copyHuman.name)") //빅스비
