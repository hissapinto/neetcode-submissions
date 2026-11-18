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
        var l1 = list1
        var l2 = list2
        
        let pAnda = ListNode(0)
        var current: ListNode? = pAnda
        
        //enquanto nós nas duas listas
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                current?.next = l1
                l1 = l1?.next
            } else {
                current?.next = l2
                l2 = l2?.next
            }
            // Avança o ponteiro da nova lista
            current = current?.next
        }
        
        // conecta o restante da lista
        current?.next = l1 ?? l2
        
        // retorna o início
        return pAnda.next
    }
}
