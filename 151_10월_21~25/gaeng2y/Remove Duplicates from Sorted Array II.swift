import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var hasDuplicate = false
        var i = 0

        for j in 1..<nums.count {
            if nums[j] == nums[i] && !hasDuplicate {
                hasDuplicate = true
                i += 1
                nums[i] = nums[j]
            } else if nums[j] != nums[i] {
                hasDuplicate = false
                i += 1
                nums[i] = nums[j]
            }
        }

        return i + 1
    }
}
