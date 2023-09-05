import UIKit

let jsonFromServer = """
{
    "nick_name": "SJ",
    "job": "Developer, Student",
    "user_name": "SJ_RESPECT"
}
"""

struct User : Codable {
    var nickname: String?
    var job: String?
    var myUserName: String?
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        case job
        case myUserName = "user_name"
        
    }
    static func getUserFromJson(_ jsonString: String) -> Self? {
        guard let jsonData : Data = jsonString.data(using: .utf8) else {
            return nil
        }
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("user : \(user)")
            return user
        } catch{
            print("error : \(error.localizedDescription)" )
            return nil
        }
    }
}
let user = User.getUserFromJson(jsonFromServer)
