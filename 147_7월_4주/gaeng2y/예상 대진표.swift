import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
     var answer = 0

    var a = a, b = b 
    while a != b {
        a = Int(ceil(Double(a) / 2.0))
        b = Int(ceil(Double(b) / 2.0))
        
        answer += 1
    }
    
    return answer
}
