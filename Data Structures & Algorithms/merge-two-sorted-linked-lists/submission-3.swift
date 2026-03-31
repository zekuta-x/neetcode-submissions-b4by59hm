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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummyNode = ListNode(0)
        var currentNode = dummyNode

        var list1Node: ListNode? = list1
        var list2Node: ListNode? = list2

        while(list1Node != nil && list2Node != nil) {
            if list1Node!.val <= list2Node!.val {
                // list1が小さいか同じ
                currentNode.next = list1Node
                currentNode = currentNode.next!
                list1Node = list1Node!.next
            } else {
                // list2が小さい
                currentNode.next = list2Node
                currentNode = currentNode.next!
                list2Node = list2Node!.next
            }
        }

        if list1Node == nil {
            currentNode.next = list2Node
        } else {
            currentNode.next = list1Node
        }

        return dummyNode.next
    }
}

print(Solution())
