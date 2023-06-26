import Foundation

guard let input = readLine() else { fatalError() }
let arr = input.components(separatedBy: " ").compactMap({ Int($0) })
let h = arr[0]
let w = arr[1]
let n = arr[2]
let m = arr[3]

let a = ceil((Double(h) / Double(n + 1)))
let b = ceil((Double(w) / Double(m + 1)))
let answer = Int(a * b)
print(answer)
