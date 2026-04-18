/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return depth(root) == nil ? false : true
    }

    func depth(_ root: TreeNode?) -> Int? {
        guard let root = root else {
            return 0
        }

        guard let left = depth(root.left), 
        let right = depth(root.right) else {
            return nil
        }

        if abs(right - left) > 1 {
            return nil
        }

        return max(left, right) + 1
    }
}
