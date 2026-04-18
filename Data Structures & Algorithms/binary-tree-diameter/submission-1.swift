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
    var maxDepth: Int = 0

    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        diameterOfBinaryTree2(root)
        return maxDepth
    }

    func diameterOfBinaryTree2(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        let left = diameterOfBinaryTree2(root.left)
        let right = diameterOfBinaryTree2(root.right)

        maxDepth = max(maxDepth, left+right)
        return max(left, right) + 1
    }
}
