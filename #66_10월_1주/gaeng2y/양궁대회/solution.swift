import Foundation

var maxHistory: [[Int]] = [] //최대 점수 차이인 점수판
var maxScore: Int = -1 //최대 점수 차이

func dfs(_ history: [Int], _ info: [Int], depth: Int, arrow: Int) {
    var copyHistory = history
    var copyArrow = arrow
    
    if depth == 0 || arrow <= 0 { //10번째 시도 || 화살을 다 쏨
        copyHistory[0] = depth == 0 ? arrow : copyHistory[0]
        let score = getScoreGap(history, info) //점수차 확인
        if maxScore == score { //최대 점수 차이면 점수판 저장
            maxHistory.append(copyHistory)
        } else if maxScore < score { //최대 점수 갱신
            maxScore = score
            maxHistory = [copyHistory]
        }
        
        return
    }
    
    let shooting = info[depth] + 1
    if arrow >= shooting { //어피치를 이길 수 있는 경우
        copyArrow -= shooting
        copyHistory[depth] = shooting //쏜 경우
        //다음 점수로 이동
        dfs(copyHistory, info, depth: depth - 1, arrow: copyArrow)
        
        copyHistory[depth] = 0
    }
    
    //안 쏜 경우
    dfs(copyHistory, info, depth: depth - 1, arrow: arrow)
}

func getScoreGap(_ history: [Int], _ info: [Int]) -> Int {
    var lion = 0, apeach = 0
    for (i, score) in history.enumerated() {
        if score == 0  {
            apeach += (info[i] > 0 ? i : 0)
        } else {
            lion += i
        }
    }
    
    return lion - apeach
}

func solution(_ n:Int, _ info:[Int]) -> [Int] {
    var result: [Int] = []
    
    var lionHistory: [Int] = Array(repeating: 0, count: 11)
    dfs(lionHistory, info.reversed(), depth: 10, arrow: n) //info도 0~10으로 전달
    
    // print("maxScore: \(maxScore) / maxHistory: \(maxHistory)")
    guard maxScore > 0 else { //못 이기는 경우
        return [-1]
    }

    //같은 점수일 때 적은 점수에 많이 쏜거면 쏜 점수의 종류가 많다.
    maxHistory.sort {
        $0.filter { $0 != 0 }.count > $1.filter { $0 != 0 }.count
    }
    
    // print("maxHisotry: \(maxHistory)")
    return maxHistory.first!.reversed()
}
