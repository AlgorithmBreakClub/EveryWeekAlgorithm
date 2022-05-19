import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var res = [Int]()
    var days = [Int]()
    for i in 0 ..< progresses.count {
        let remain = 100 - progresses[i]
        // [(100 - progress - 1) / speed + 1]
        let remainDay = (remain - 1) / speeds[i] + 1
        days.append(Int(remainDay))
    }
    // 배열
    var cur = 0
    while cur < days.count {
        let nowDelay = days[cur]
        var taskCount = 0
        while cur < days.count && days[cur] <= nowDelay {
            taskCount += 1
            cur += 1
        }
        res.append(taskCount)
    }
    return res
}
