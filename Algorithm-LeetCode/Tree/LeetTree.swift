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

extension LeetTree {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return false
    }
}
