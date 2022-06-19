import Foundation

func solution(_ numbers:[Int]) -> Int {
    let result = 45 - numbers.reduce(0, +)
    return result
}
