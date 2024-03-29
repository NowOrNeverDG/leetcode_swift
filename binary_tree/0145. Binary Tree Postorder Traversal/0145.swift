/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 
class Solution {
    var result = [Int]()
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        dfs(node: root)
        return result
    }

    func dfs(node:TreeNode?) {
        guard let node = node else { return }
        
        dfs(node: node.left)
        dfs(node: node.right)
        result.append(node.val)
    }
}
