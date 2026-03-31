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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil  // 1つ前のノード（最初は誰もいないのでnil）
        var current = head         // 今見ているノード
        
        while let node = current {
            let nextTemp = node.next // ① 次の人を見失わないように一旦メモ！
            node.next = prev         // ② 矢印を「次の人」から「前の人」へ逆向きにする
            
            prev = node              // ③ 前の人を「今の自分」に更新して1歩進む
            current = nextTemp       // ④ 今の自分を「メモしておいた次の人」に更新して1歩進む
        }
        return prev // 最後はprevが新しい先頭になる
    }
}

print(Solution())