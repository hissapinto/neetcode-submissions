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
        guard let root = root else { return root }
        var fila = Deque<TreeNode>()
        fila.append(root)

        while (!fila.isEmpty) {
            let node = fila.removeFirst()

            (node.left, node.right) = (node.right, node.left)

            if let left = node.left {
                fila.append(left)
            }
            if let right = node.right {
                fila.append(right)
            }
        }

        return root
    }
}
