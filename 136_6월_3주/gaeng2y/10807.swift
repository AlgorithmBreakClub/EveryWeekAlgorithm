import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split { $0 == " " }.compactMap { Int($0) }
let v = Int(readLine()!)!

var result = 0
arr.forEach {
    if $0 == v {
        result += 1
    }
}

print(result)