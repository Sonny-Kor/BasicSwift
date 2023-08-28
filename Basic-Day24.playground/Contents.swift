import UIKit

// associatedtype 을 사용하면 protocol에서 제네릭 타입을 넣을 수 있다. 
protocol PetHaving {
    associatedtype T
    var pets: [T] {get set}
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T){
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct Friend : PetHaving {
    var pets : [Animal] = []
}

struct Family : PetHaving {
    var pets: [String] = []
}

var myFirend = Friend()

myFirend.gotNewPet(Animal.cat)

myFirend.gotNewPet(Animal.bird)
myFirend.gotNewPet(Animal.dog)
myFirend.pets

var myFamily = Family()
myFamily.gotNewPet("gg")
myFamily.gotNewPet("gg1")
myFamily.gotNewPet("gg2")
