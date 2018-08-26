//
//  LeetTree+Test.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetTree {
    func testIsBalanced() {
        print("\n=========平衡二叉树 begin=========\n")
        let array = [
                [1, 2, 2, 3, 3, nil, nil, 4, 4],
                [3, 9, 20, nil, nil, 15, 7]
            ]
        array.forEach { (arr) in
            print("arr:", arr)
            let tree = array2Tree(arr, 0)
            traverByPreOrder(tree)
            
            let result = isBalanced(tree)
            print("====is banlance:", result)
        }
        print("\n=========平衡二叉树 end=========\n")
    }

    func testZigzagLevelOrder() {
        print("\n=========二叉树层次遍历 begin=========\n")
        let array = [
            [1, 2, 3, nil, nil, 4, 5, nil, nil, nil, nil, 6, 7],
            [3, 9, 20, nil, nil, 15, 7],
            [1, 2, 3, 4, nil, nil, 5]
        ]
        array.forEach { (arr) in
            print("arr:", arr)
            let tree = array2Tree(arr, 0)
            traverByPreOrder(tree)

            let result = zigzagLevelOrder(tree)
            print("====level order:", result)
        }
        print("\n=========二叉树层次遍历 end=========\n")
    }
    
    func testFindDuplicateSubtrees() {
        print("\n=========寻找重复子树 begin=========\n")
        let array = [
            [0,0,0,0,nil,nil,0,nil,nil,nil,nil,nil,nil,nil,0],
//            [1, 2, 3, 4, nil, 2, 4, nil, nil, nil, nil, 4],
//            [1, 2, 3, nil, nil, 4, 5, nil, nil, nil, nil, 6, 7],
//            [3, 9, 20, nil, nil, 15, 7],
//            [1, 2, 3, 4, nil, nil, 5]
        ]
        array.forEach { (arr) in
            print("arr:", arr)
            let tree = array2Tree(arr, 0)
            traverByPreOrder(tree)
            
            let result = findDuplicateSubtrees(tree)
            print("====find duplicate result:\n")
            result.enumerated().forEach({ (index, node) in
                print("result===================", index)
                traverByPreOrder(node)
            })
        }
        print("\n=========寻找重复子树 end=========\n")
    }
}
