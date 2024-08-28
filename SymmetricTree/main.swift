//
//  main.swift
//  SymmetricTree
//
//  Created by E A on 8/28/24.
//

class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(root, root)
    }

    func isMirror(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
        if t1 == nil && t2 == nil { return true }
        if t1 == nil || t2 == nil { return false }
        return (t1!.val == t2!.val) && isMirror(t1!.left, t2!.right) && isMirror(t1!.right, t2!.left)
    }

    func _isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }

        if root.left == nil || root.right == nil {
            return root.left == nil && root.right == nil
        }

        if root.left?.val != root.right?.val {
            return false
        }

        let t0 = TreeNode(1, root.left?.left, root.right?.right)
        if !isSymmetric(t0) {
            return false
        }

        let t1 = TreeNode(1, root.left?.right, root.right?.left)
        if !isSymmetric(t1) {
            return false
        }

        return true
    }

    func test() {
        let root = TreeNode(1)
        print(isSymmetric(root))
    }
}

Solution().test()
