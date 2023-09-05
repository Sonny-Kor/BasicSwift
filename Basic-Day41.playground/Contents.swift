import UIKit

// 빌더 패턴 공부

struct Pet {
    var name : String? = nil
    var age : Int? = nil
    init(){
        
    }
    init(builder: SecondPetBuilder){
        self.name = builder.name
        self.age = builder.age
    }
}
class SecondPetBuilder {
    var name : String? = nil
    var age : Int? = nil
    
    typealias BuilderClosure = (SecondPetBuilder) -> ()
    init(buildClosure: BuilderClosure){
        buildClosure(self)
    }
}
class PetBuilder {
    private var pet : Pet = Pet()
    func withName(_ name: String) -> Self {
        pet.name = name
        return self
    }
    func withAge(_ age: Int) -> Self {
        pet.age = age
        return self
    }
    func build() -> Pet {
        return self.pet
    }
}

// 첫번째 방법
let myPet = PetBuilder()
    .withName("Cat")
    .withAge(3)
    .build()

// 2번째 방법
let petBuilder = SecondPetBuilder { builder in
    builder.name = "dog"
    builder.age = 10
}

let mySecondPet = Pet(builder: petBuilder)
