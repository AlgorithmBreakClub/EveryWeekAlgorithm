import Foundation

func solution() -> Int {
    let input = readLine()!.split { $0 == " " }.map { Int($0)! }
    let n = input[0]
    var k = input[1]
    
    var coins = [Int]()
    var result = 0
    
    for _ in 0 ..< n {
        coins.append(Int(readLine()!)!)
    }
    
    coins = Array(coins.reversed())
    
    for coin in coins {
        if coin <= k {
            result += k / coin
            k = k % coin
        }
        
        if k == 0 {
            break
        }
    }
    
    return result
}

print(solution())
