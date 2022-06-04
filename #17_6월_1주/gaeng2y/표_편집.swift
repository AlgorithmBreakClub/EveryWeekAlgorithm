import Foundation

func solution(_ n:Int, _ k:Int, _ cmds:[String]) -> String {
    var exist = [Bool](repeating: true, count: n)
    var up = [Int](-1 ... n - 1)
    var down = [Int](1 ... n)
    var delete = [Int]()
    var now = k
    
    for cmd in cmds {
        let op = cmd.components(separatedBy: " ")
        switch op[0] {
            case "U":
                let cnt = Int(op[1]) ?? 0
                for _ in 0 ..< cnt {
                    now = up[now]
                }
            case "D":
                let cnt = Int(op[1]) ?? 0
                for _ in 0 ..< cnt {
                    now = down[now]
                }
            case "C":
                exist[now] = false
                delete.append(now)
                if up[now] != -1 {
                    down[up[now]] = down[now]
                }
                if down[now] != n {
                    up[down[now]] = up[now]
                }
                now = down[now] == n ? up[now] : down[now]
            case "Z":
                let idx = delete.popLast() ?? 0
                exist[idx] = true
                if up[idx] != -1 {
                    down[up[idx]] = idx
                }
                if down[idx] != n {
                    up[down[idx]] = idx
                }
            default:
                break
        }
    }
    
    return exist.map { $0 ? "O" : "X" }.joined()
}
