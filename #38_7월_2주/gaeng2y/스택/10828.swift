import Foundation

var arr = [Int]()
var res = [Int]()
let n = Int(readLine()!)!

for _ in 0..<n {
    let command = readLine()!
    
    if command.contains("push") {
        let pushCommand = command.components(separatedBy: " ")
        let pushNum = Int(pushCommand.last!)!
        arr.append(pushNum)
    } else if command.contains("pop") {
        let num = arr.popLast()
        if num != nil {
            res.append(num!)
        } else {
            res.append(-1)
        }
    } else if command.contains("size") {
        res.append(arr.count)
    } else if command.contains("empty") {
        res.append(arr.isEmpty ? 1 : 0)
    } else if command.contains("top") {
        let last = arr.last
        if last == nil {
            res.append(-1)
        } else {
            res.append(last!)
        }
    }
}

res.forEach {
    print($0)
}
