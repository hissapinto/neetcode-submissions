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

// h -> p -> pd
// h -> nil
// p -> h
// h = p
// p = pd
// ex h <- h -> p

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        // Se vazio ou só um nó, retorna o que recebeu
        guard var head = head, head.next != nil else { return head }

        // Cria novo nó que recebe próximo do head
        var p = head.next
        // Desvincula o head do próximo associando a nulo
        head.next = nil
        
        // Enquanto nao chega no nil == fim da lista
        while p != nil {

            // novo nó que recebe o próximo do p
            var pd = p?.next
            // Associa o próximo do p com o head
            p?.next = head
            // head vira o p (antigo next)
            head = p!
            // p vira pd (antigo p)
            p = pd
        }

        return head
    }
}
