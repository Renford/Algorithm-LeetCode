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
        let array = [
                [1, 2, 2, 3, 3, nil, nil, 4, 4],
                [3, 9, 20, nil, nil, 15, 7]
            ]
        array.forEach { (arr) in
            print("arr:", arr)
            let tree = array2Tree(arr, 0)
            traverByPreOrder(tree)
        }
    }
}
