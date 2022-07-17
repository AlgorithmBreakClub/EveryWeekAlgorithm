import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return absolutes.enumerated().map { (offset, element) -> Int in
        return signs[offset] ? element : (element * -1)
    }.reduce(0, +)
}
