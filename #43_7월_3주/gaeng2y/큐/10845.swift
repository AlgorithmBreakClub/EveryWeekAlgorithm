import Foundation

var queue = [Int]()

func push(_ n: Int) {
    queue.append(n)
}

func pop() -> Int {
    let element = size() == 0 ? -1 : queue.removeFirst()
    return element
}

func size() -> Int {
    return queue.count
}

func front() -> Int {
    return size() == 0 ? -1 : queue.first ?? -1
}

func back() -> Int {
    return size() == 0 ? -1 : queue.last ?? -1
}

if let input = readLine() {
    let n = Int(input) ?? 0
    
    for _ in 0 ..< n {
        if let cmd = readLine() {
            let element = cmd.split { $0 == " " }.compactMap { String($0) }
            
            switch element.first ?? "" {
                case "push":
                    push(Int(element.last ?? "0") ?? 0)
                case "pop":
                    print(pop())
                case "size":
                    print(size())
                case "empty":
                    print(queue.isEmpty ? 1 : 0)
                case "front":
                    print(front())
                case "back":
                    print(back())
                default:
                    break
            }
        }
    }
}
