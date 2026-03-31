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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let node = root else { return nil }

        let tmp = node.left
        node.left = node.right
        node.right = tmp

        invertTree(node.left)
        invertTree(node.right)

        return node
    }
}
