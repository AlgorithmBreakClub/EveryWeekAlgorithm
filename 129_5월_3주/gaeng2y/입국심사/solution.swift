import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    let times = times.sorted()
    var maxTime = times.last! * n
    var minTime = 1
    var result = 0
    
    while minTime <= maxTime {
        let midTime = (minTime + maxTime) / 2
        var sum = 0
        times.forEach {
            sum += midTime / $0
        }
        print("mid: \(midTime), \(sum)")
        
        if sum < n { // 시간이 더필요함  mid ~ max 검사
            minTime = midTime + 1
        } else { // 인원을 만족해도 시간을 더 줄여야함 최소시간을 찾기위해서 1 ~ mid검사
            maxTime = midTime - 1
            result = midTime
        }
    }
    print(result)
    return Int64(result)
}