//
//  LeetArray+Test.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetArray {
    func testPerfectNumber() {
        let array = [1, 2, 3, 5, 6, 28, 9999991]
        for num in array {
            let result = checkPerfectNumber(num)
            print("===\(num)", result)
        }
    }
    
    func testMedianNumber() {
        let array = [
            [[], []],
            [[1], []],
            [[1, 2], []],
            [[1], [7, 8]],
            [[1, 7, 8], [2, 3, 4]],
            [[1, 7, 8], [2, 3, 4, 7, 8]]
        ]
        print("========中位数测试开始=========\n")
        array.forEach { (arr) in
            let midNumber = findMedianSortedArrays(arr[0], arr[1])
            print("数组：", arr[0], arr[1], "===中位数：", midNumber)
        }
        print("========中位数测试结束=========\n")
    }
    
    func testFindMin() {
        let array = [
            [],
            [1],
            [1, 2],
            [2, 1],
            [1, 2, 3],
            [6, 1, 2, 3],
            [6, 7, 8, 1, 2, 3],
            [6, 7, 8, 1],
            ]
        print("========升序旋转数组测试开始=========\n")
        array.forEach { (arr) in
            let min = findMin(arr)
            print("数组：", arr, "===最小值：", min)
        }
        print("========升序旋转数组测试结束=========\n")
    }
}
