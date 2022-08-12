import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var res = 0
    for i in 1...count {
        res += price * i
    }
    
    let notEnough = Int64(res - money)
    
    return notEnough <= 0 ? 0 : notEnough
}
