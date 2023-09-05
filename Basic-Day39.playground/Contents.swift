import UIKit

func someFunctionWithTralingClosure(name: String = "", completion: () -> Void){
    print(#fileID, #function, #line , "- ")
    completion()
}

someFunctionWithTralingClosure(completion: {
    print(#fileID, #function, #line, "- hohoho 1")
})

someFunctionWithTralingClosure {
    print(#fileID, #function, #line, "- hohoho 2")
}

func someFunctionWithClosures(first: () -> Void ,second: (String) -> Void, third: (Int) -> Void){
    print(#fileID, #function, #line, "- ")
    first()
    second("gfff")
    third(3)
}

someFunctionWithClosures {
    print("frst")
} second: { string in
    print(string)
} third: { number in
    print(number)
}
