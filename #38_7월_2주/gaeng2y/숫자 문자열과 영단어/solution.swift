import Foundation

func solution(_ s: String) -> Int {
    var str = s
    str = s
    .replacingOccurrences(of: "one", with: "1")
    .replacingOccurrences(of: "two", with: "2")
    .replacingOccurrences(of: "three", with: "3")
    .replacingOccurrences(of: "four", with: "4")
    .replacingOccurrences(of: "five", with: "5")
    .replacingOccurrences(of: "six", with: "6")
    .replacingOccurrences(of: "seven", with: "7")
    .replacingOccurrences(of: "eight", with: "8")
    .replacingOccurrences(of: "nine", with: "9")
    .replacingOccurrences(of: "zero", with: "0")
    print(str)
    let result = Int(str) ?? 0
    return result
}
