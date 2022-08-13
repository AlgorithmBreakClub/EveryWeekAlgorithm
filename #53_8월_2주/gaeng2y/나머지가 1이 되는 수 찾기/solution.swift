import Foundation

func solution(_ n:Int) -> Int {
    var res = 1
    while true {
        if n % res == 1 {
            break
        }
        res += 1
    }
    
    return res
}
