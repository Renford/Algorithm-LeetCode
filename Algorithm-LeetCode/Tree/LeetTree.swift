//
//  LeetTree.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
}

class LeetTree: NSObject {
    /// 数组 --> 二叉树
    func array2Tree(_ arr: [Any], _ index: Int) -> TreeNode? {
        guard let val = arr[index] as? Int else {
            return nil
        }

        let node = TreeNode(val)

        let leftIndex = 2 * index + 1
        if leftIndex > arr.count - 1 {
            node.left = nil
        } else {
            node.left = array2Tree(arr, leftIndex)
        }

        let rightIndex = 2 * index + 2
        if rightIndex > arr.count - 1 {
            node.right = nil
        } else {
            node.right = array2Tree(arr, rightIndex)
        }

        return node
    }

    /// 先序遍历
    func traverByPreOrder(_ tree: TreeNode?) {
        if let t = tree {
            print("tree node:", t.val)
            traverByPreOrder(t.left)
            traverByPreOrder(t.right)
        }
    }
}

// MARK: - 110.平衡二叉树
extension LeetTree {
    /// https://leetcode-cn.com/problems/balanced-binary-tree/description/
    func isBalanced(_ root: TreeNode?) -> Bool {
        if let node = root {
            let leftHeight = getHeight(node.left)
            let rightHeight = getHeight(node.right)
            if abs(leftHeight - rightHeight) > 1 {
                return false
            } else {
                return isBalanced(node.left) && isBalanced(node.right)
            }
        }
        return true
    }
}

// MARK: - 103. 二叉树的锯齿形层次遍历
extension LeetTree {
    /// https://leetcode-cn.com/problems/binary-tree-zigzag-level-order-traversal/description/
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = []

        var nodeQueue: [TreeNode?] = []
        if let node = root {
            nodeQueue.append(node)
        }

        while !nodeQueue.isEmpty {
            var tempArray: [Int] = []
            var count = nodeQueue.count

            while count > 0 {
                if let first = nodeQueue.removeFirst() {
                    tempArray.append(first.val)
                    count -= 1

                    if let left = first.left {
                        nodeQueue.append(left)
                    }

                    if let right = first.right {
                        nodeQueue.append(right)
                    }
                }
            }

            result.append(tempArray)
        }

        return result
    }
}

// MARK: - private method
extension LeetTree {
    fileprivate func getHeight(_ root: TreeNode?) -> Int {
        var count = 0
        
        if let node = root {
            let leftHeight = getHeight(node.left)
            let rightHeight = getHeight(node.right)
            if leftHeight > rightHeight {
                count = leftHeight + 1
            } else {
                count = rightHeight + 1
            }
        }
        
        return count
    }
}
