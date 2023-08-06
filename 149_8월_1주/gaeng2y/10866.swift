import Foundation

let N = Int(readLine()!)!
var deque = [Int]()

for _ in 0..<N {
    let commandLine = readLine()!.split(separator: " ")
    let command = String(commandLine[0])


    if command == "push_front" {
        deque.insert(Int(commandLine[1])!, at: 0)
    } else if command == "push_back" {
        deque.append(Int(commandLine[1])!)
    } else if command == "pop_front" {
        print(deque.isEmpty ? -1 : deque.removeFirst())
    } else if command == "pop_back" {
        print(deque.isEmpty ? -1 : deque.removeLast())
    } else if command == "size" {
        print(deque.count)
    } else if command == "empty" {
        print(deque.isEmpty ? 1 : 0)
    } else if command == "front" {
        print(deque.isEmpty ? -1 : deque[0])
    } else if command == "back" {
        print(deque.isEmpty ? -1 : deque.last!)
    }
}

