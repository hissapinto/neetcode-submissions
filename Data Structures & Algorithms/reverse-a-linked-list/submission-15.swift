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

// 0 <- 1 <- 2 <- h3 -> p nil

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard var head = head, head.next != nil else { return head }

        var p: ListNode? = head.next
        head.next = nil
        
        while p != nil {
            var pd = p?.next
            p?.next = head
            head = p!
            p = pd
        }

        return head
    }
}
