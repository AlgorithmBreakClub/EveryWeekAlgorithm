import Foundation

func solution(_ s:String) -> Bool
{
    var count = 0
    for a in s {
        if a == "("{
            count += 1
        } else{
            count -= 1
        }
        if count < 0 {
            break
        }
    }
    return count == 0 ? true : false
}
