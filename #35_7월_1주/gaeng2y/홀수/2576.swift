import Foundation

var nums = [Int]()
for _ in 0..<7 {
    let num = readLine().map { Int($0) ?? 0 } ?? 0
    nums.append(num)
}
nums = nums.filter { $0 % 2 == 1}
if nums.count == 0 {
    print("-1")
} else {
    print(nums.reduce(0, +))
    print(nums.min() ?? 0)
}
