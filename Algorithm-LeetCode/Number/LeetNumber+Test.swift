//
//  LeetNumber+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/15.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetNumber {
    func testDivide() {
        print("\n=========两数相除 begin=========\n")
        let arr = [
            [10, 1],
            [10, 0],
            [-2147483648, -1],
            [50, 3]
        ]
        arr.forEach { (value) in
            let result = divide(value[0], value[1])
            print("num: \(value), divide result: \(result)")
        }
        print("\n=========两数相除 end=========\n")
    }

    func testAddDigits() {
        print("\n=========各位相加 begin=========\n")
        let arr = [0, 10, 19]
        arr.forEach { (value) in
            let result = addDigits(value)
            print("num: \(value), add result: \(result)")
        }
        print("\n=========各位相加 end=========\n")
    }
}
