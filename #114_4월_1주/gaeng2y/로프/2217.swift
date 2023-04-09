import Foundation

func solution() -> Int {
    let n = Int(readLine()!)!
    var ropes = [Int]()
    
    for _ in 0..<n{
        ropes.append(Int(readLine()!)!)
    }
    
    ropes = ropes.sorted()
    let strongestRope = ropes[n-1]
    var result = 0
    
    for (index,weakestRope) in ropes.enumerated(){
        if (weakestRope * (n-index)) > result {
            result = (weakestRope * (n - index))
        }
    }
    
    if result > strongestRope{
        return result
    }

    return strongestRope
}

print(solution())
