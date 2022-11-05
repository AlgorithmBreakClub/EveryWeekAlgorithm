import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var check = [String]()
    
    for (index, word)  in words.enumerated() {
        if !check.isEmpty, check.contains(word) || check.last!.last! != word.first! {
            return [index%n + 1, index/n + 1]
        }
        check.append(word)
    }
    
    return [0, 0]
}
