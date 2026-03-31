/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var headNode: ListNode? = head
        var visited = Set<ObjectIdentifier>()

        while(headNode != nil) {
            let currentNode = ObjectIdentifier(headNode!)
            if visited.contains(currentNode) {
                return true
            }
            visited.insert(currentNode)
            headNode = headNode?.next
        }
        return false
    }
}

print(Solution())
