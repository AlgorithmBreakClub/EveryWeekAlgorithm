import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let min = lottos.filter{ win_nums.contains($0) }.count
    let max = lottos.filter{ $0 == 0 }.count + min
    
    func result(minmax: Int) -> Int {
        var result = 0
        switch minmax {
        case 0...1:
            result = 6
        case 2:
            result = 5
        case 3:
            result = 4
        case 4:
            result = 3
        case 5:
            result = 2
        case 6:
            result = 1
        default:
            break
        }
        return result
    }
    
    return [result(minmax:max), result(minmax: min)]
}
