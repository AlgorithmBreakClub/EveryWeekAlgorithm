import Foundation

var arr = [Int]()
var currentCount = 0
for _ in 0..<4 {
    let input = readLine()!.components(separatedBy: " ")
    let count = Int(input[1])! - Int(input[0])!
    currentCount += count
    arr.append(currentCount)
}

print(arr.max()!)
