class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count
        }
        var index = 0
        for n in nums where n != nums[index] {
            index += 1
            nums[index] = n
        }
        return index + 1
    }
}
