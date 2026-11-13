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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var resp = 0

        func dfs(_ node: TreeNode?) -> Int{
            guard let node = node else { return 0 }

            let l = dfs(node.left)
            let r = dfs(node.right)
            resp = max(resp, l + r)

            return 1 + max(l, r)
        }

        dfs(root)
        return resp
    }
}
