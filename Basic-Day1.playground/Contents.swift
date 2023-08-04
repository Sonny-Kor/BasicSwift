import UIKit

// 다크 모드 여부
var isDarkMode : Bool = true

// isDarkMode == true
if isDarkMode {
    print("this is darkmode.")
}else{
    print("this is not darkmode");
}

var title : String = isDarkMode == true ? "다크모드 입니다" : "다크모드가 아닙니다."

print("title : \(title)")
