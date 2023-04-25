import Foundation

var siteDic: [String: String] = [:]
let testCase: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
for _ in 1...testCase[0]{
    let info: [String] = readLine()!.split(separator: " ").map{ String($0) }
    siteDic[info[0]] = info[1]
}
for _ in 1...testCase[1]{
    let find: String = readLine().map{ String($0) }!
    print(siteDic[find]!)
}