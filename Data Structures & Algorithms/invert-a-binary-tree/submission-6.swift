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

        func swapTreeNode(_ node: TreeNode?) {
            guard let node = node else { return }

            if node.left == nil && node.right == nil { return }
            else {
                swapTreeNode(node.left)
                swapTreeNode(node.right)
                swap(&node.left, &node.right)
            }
        }
        
        swapTreeNode(root)
        return root
    }
}
