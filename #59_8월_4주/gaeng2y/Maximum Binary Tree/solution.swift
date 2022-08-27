import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        guard !nums.isEmpty else { return nil }
        
        var maxNum = 0
        var maxIndex = 0
        
        for (index, num) in nums.enumerated() {
            if num > maxNum {
                maxNum = num
                maxIndex = index
            }
        }
        
        var root = TreeNode(maxNum)
        root.left = constructMaximumBinaryTree(Array(nums[0..<maxIndex]))
        root.right = constructMaximumBinaryTree(Array(nums[(maxIndex + 1)..<nums.count]))
        return root
    }
}
