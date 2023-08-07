let n = Int(readLine()!)!
var numSet = Set<Int>()
readLine()!.split(separator: " ").map { numSet.insert(Int($0)!) }
numSet.sorted().map{ print($0, terminator: " ") }
