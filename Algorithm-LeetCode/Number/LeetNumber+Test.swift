//
//  LeetNumber+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/15.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetNumber {
    
    @objc func testDivide() {
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

    @objc func testAddDigits() {
        print("\n=========各位相加 begin=========\n")
        let arr = [0, 10, 19]
        arr.forEach { (value) in
            let result = addDigits(value)
            print("num: \(value), add result: \(result)")
        }
        print("\n=========各位相加 end=========\n")
    }
    
    @objc func testMaxArea() {
        print("\n=========最大面积 begin=========\n")
        let array = [
            [],
            [1, 2, 1],
            [1,8,6,2,5,4,8,3,7]
        ]
        
        array.forEach { (arr) in
            let result = maxArea(arr)
            print("height: \(arr), max area result: \(result)")
        }
        print("\n=========最大面积 end=========\n")
    }
    
    @objc func testplusOne() {
        print("\n=========加一 begin=========\n")
        let array = [
            [],
            [9],
            [1, 2, 1],
            [1,8,6,2,5,4,8,3,7]
        ]
        array.forEach { (arr) in
            let result = plusOne(arr)
            print("digits: \(arr), plus one result: \(result)")
        }
        print("\n=========加一 end=========\n")
    }
    
}
