import UIKit

struct MyPet {
    
    public var title : String = "no title"
    private (set) var name = "이름없음"
    
    mutating func setName(to newName: String){
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title
myPet.title = "gd"
//myPet.name = "ch"
myPet.setName(to: "chv")
