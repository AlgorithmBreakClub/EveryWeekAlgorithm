let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var basket = [Int](0...n)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let i = input[0], j = input[1]
    basket.swapAt(i, j)
}

basket[1...].forEach { print($0, terminator: " ") }
