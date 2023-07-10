import Foundation

func solution(_ n:Int) -> Int {
    var ans:Int = 0
    
    var n = n
    while n > 0 {
        ans += (n % 2)
        n = (n % 2 == 0) ? n/2 : n-1
    }
    
    return ans
}
