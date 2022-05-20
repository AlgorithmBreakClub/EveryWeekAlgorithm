import Foundation

    func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        var doneSchedule = [Int]()
        for i in 0..<progresses.count {
            let remainWork = 100 - progresses[i]
            let workSpeed = speeds[i]
            var dueTime = remainWork / workSpeed
            if remainWork % workSpeed > 0 {
                dueTime += 1
            }
            doneSchedule.append(dueTime)
        }
        
        var releasedFunctionCount = [Int]()
        var functionCount = 0
        var beforeDay = 0
        while(!doneSchedule.isEmpty) {
            let day = doneSchedule.remove(at:0)
            if beforeDay == 0 {
                beforeDay = day
                functionCount += 1
            }
            else if(beforeDay >= day){
                 functionCount += 1
            }
            else if(beforeDay < day) {
                beforeDay = day
                releasedFunctionCount.append(functionCount)
                functionCount = 1
            }
            
            if doneSchedule.isEmpty {
                releasedFunctionCount.append(functionCount)
            }
        }
        
        return releasedFunctionCount
    }
