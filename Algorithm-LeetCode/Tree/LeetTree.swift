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
            var nextQueue: [TreeNode?] = []

            while count > 0 {
                if let node = nodeQueue.removeFirst() {

                    if result.count % 2 == 0 {
                        tempArray.append(node.val)
                    } else {
                        tempArray.insert(node.val, at: 0)
                    }

                    count -= 1

                    if let left = node.left {
                        nextQueue.append(left)
                    }

                    if let right = node.right {
                        nextQueue.append(right)
                    }
                }
            }
            nodeQueue = nextQueue

            result.append(tempArray)
        }

        return result
    }
}

// MARK: - 652. 寻找重复的子树
extension LeetTree {
    /// https://leetcode-cn.com/problems/find-duplicate-subtrees/description/
    func findDuplicateSubtrees(_ root: TreeNode?) -> [TreeNode?] {
        
        var tempDic: [String: String] = [:]
        var result: [String: TreeNode?] = [:]
        let _ = traverStringByPreOrder(root, &tempDic, &result)
        
        return Array(result.values)
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
    
    fileprivate func traverStringByPreOrder (_ treeNode: TreeNode?, _ dic: inout [String: String], _ result: inout [String: TreeNode?]) -> String {
        guard let node = treeNode else {
            return " "
        }
        
        let str = "\(traverStringByPreOrder(node.left, &dic, &result))+\(traverStringByPreOrder(node.right, &dic, &result))+\(node.val)"
        
        if let value = dic[str], value == str, !result.keys.contains(str) {
            result[str] = node
        } else {
            dic[str] = str
        }
        
        return str
        
    }
}
