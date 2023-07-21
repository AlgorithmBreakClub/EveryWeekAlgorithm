import Foundation

func getDivisor(_ n:Int, _ limit:Int, _ power: Int) -> Int {
    if n == 1 {
        return 1
    }
    var isSquare = Double(Int(sqrt(Double(n)))) == sqrt(Double(n))
    var count:Int = 0
    for i in 1...Int(sqrt(Double(n))) {
        if n%i == 0 {
            count += 1
            if (isSquare ? count*2-1 : count*2) > limit {
               return power
            }
        }
    }
    count = isSquare ? count*2-1 : count*2
    return count
}

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result:Int = 0
    for i in 1...number {
        let count = getDivisor(i, limit, power)
        result += count
    }
    return result
}
