//
//  LeetNumber+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/15.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetNumber {
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
