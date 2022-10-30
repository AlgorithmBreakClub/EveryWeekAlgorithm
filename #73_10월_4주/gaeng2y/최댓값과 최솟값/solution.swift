import Foundation

func solution(_ s:String) -> String {
    let numbers = s.split { $0 == " " }.compactMap { Int($0) }
    let max = numbers.max()!
    let min = numbers.min()!
    return "\(min) \(max)"
}
