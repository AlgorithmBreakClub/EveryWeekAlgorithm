import Foundation

let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
let n = input[0], m = input[1]

var visited = Array(repeating: false, count: n + 1)
var depth = 0

var stack = [Int]()

func solution(depth: Int) {
    if depth == m {
        print(stack.map { String($0) }.joined(separator: " ") )
        return
    } else {
        for i in 1 ... n {
            if !visited[i] {
                visited[i] = true
                stack.append(i)
                solution(depth: depth + 1)
                visited[i] = false
                stack.removeLast()
            }
        }
    }
}

solution(depth: depth)

