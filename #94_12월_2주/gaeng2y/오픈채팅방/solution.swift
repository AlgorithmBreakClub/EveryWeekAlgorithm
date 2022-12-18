import Foundation

func solution(_ record:[String]) -> [String] {
    var nickName: [String : String] = [:]
    var result: [String] = []
    
    // nickName을 가장 최근 값으로 초기화 해줌
    for i in record{
        let arr = i.components(separatedBy: " ")
        
        if arr.count > 2 {
            nickName[arr[1]] = arr[2]
        }
    }
    
    for i in record{
        let arr = i.components(separatedBy: " ")

        let name = nickName[arr[1]]!
        
        if arr[0] == "Enter"{
            result.append("\(name)님이 들어왔습니다.")
        }else if arr[0] == "Leave"{
            result.append("\(name)님이 나갔습니다.")
        }
    }

    return result
}
