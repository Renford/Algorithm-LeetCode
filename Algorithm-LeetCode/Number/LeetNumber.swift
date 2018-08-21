//
//  LeetNumber.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/15.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LeetNumber: NSObject {


}

// MARK: - 29. 两数相除
extension LeetNumber {
    /// https://leetcode-cn.com/problems/divide-two-integers/description/
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if divisor == 0 || (dividend == Int32.min && divisor == -1) {
            return Int(Int32.max)
        } else if divisor == 1 {
            return dividend
        } else if divisor == -1 {
            return -dividend
        }

        var result = 0

        var absDividend = abs(dividend)
        let absDivisor = abs(divisor)
        while absDividend >= absDivisor {
            var tempDiv = absDivisor
            var value = 1
            while absDividend >= (tempDiv << 1) {
                tempDiv <<= 1
                value <<= 1
            }
            result += value
            absDividend -= tempDiv
        }

        if (dividend > 0 && divisor < 0) || (dividend < 0 && divisor > 0) {
            result = -result
        }

        return result
    }
}

// MARK: - 258. 各位相加
extension LeetNumber {
    /// https://leetcode-cn.com/problems/add-digits/description/
    func addDigits(_ num: Int) -> Int {
        var result = 0

        let logValue = log10(Double(num))
        if !logValue.isNaN && !logValue.isInfinite {
            let count = Int(log10(Double(num))) + 1
            for i in 0 ..< count {
                let powValue = pow(10, Double(i))
                if !powValue.isNaN && !powValue.isInfinite {
                    result += num / Int(powValue) % 10
                }
            }

            if result >= 10 {
                result = addDigits(result)
            }
        }

        return result
    }
}
