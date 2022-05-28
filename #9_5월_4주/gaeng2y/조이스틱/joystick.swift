import Foundation

func solution(_ name:String) -> Int {
        let aAscii = Int("A".unicodeScalars.first!.value)
    let zAscii = Int("Z".unicodeScalars.first!.value)
    let name = Array(name)
    var answer = 0
    var minMove = name.count - 1
    for (i, char) in name.enumerated() {
        // 알파벳 변경 최솟값 추가
        let charAscii = Int(char.asciiValue!)
        answer += min(charAscii - aAscii, zAscii - charAscii + 1)
        // 다음부터 연속된 A 찾기
        var next = i + 1
        while next < name.count && name[next] == "A" {
            next += 1
        }
        // 기존, 연속된 A의 왼쪽 시작 방식, 연속된 A의 오른쪽 시작 방식 비교 및 갱신
        minMove = [minMove, 2 * i + name.count - next, i + 2 * (name.count - next)].min()!
    }
    
    answer += minMove
    return answer
}
