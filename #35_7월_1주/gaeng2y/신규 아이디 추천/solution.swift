import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    // 1단계
    id = id.lowercased()
    // 2단계
    var newId = ""
    for i in id {
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            newId.append(i)
        }
    }
    // 3단계
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    // 4단계
    while newId.hasPrefix(".") {
        newId.removeFirst()
    }
    while newId.hasSuffix(".") {
        newId.removeLast()
    }
    // 5단계
    if newId == "" {
        newId = "a"
    }
    // 6단계
    if newId.count >= 16 {
        let index = newId.index(newId.startIndex, offsetBy: 15)
        newId = String(newId[newId.startIndex ..< index])
        if newId.hasSuffix(".") {
            newId.removeLast()
        }
    }
    // 7단계
    if newId.count <= 2 {
        while newId.count != 3 {
            newId = newId + String(newId.last!)
        }
    }
    
    return newId
}
