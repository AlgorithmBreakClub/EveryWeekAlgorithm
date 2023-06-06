import Foundation

let inputs = readLine()?.components(separatedBy: " ").compactMap{ Int($0) } ?? []
let k = inputs.last ?? 0
let scores = readLine()?.components(separatedBy: " ").compactMap { Int($0) }.sorted(by: >) ?? []
let cutline = scores[0..<k].last ?? 0

print(cutline)
