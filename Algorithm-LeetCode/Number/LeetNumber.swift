//
//  LeetNumber.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/15.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

public class LeetNumber: NSObject {

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

// MARK: - 11. 盛最多水的容器
extension LeetNumber {
    /// https://leetcode-cn.com/problems/container-with-most-water/
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        
        var leftIndex = 0
        var rightIndex = height.count - 1
        
        while rightIndex > leftIndex {
            let tempArea = (rightIndex - leftIndex) * min(height[leftIndex], height[rightIndex])
            maxArea = max(maxArea, tempArea)
            
            if height[leftIndex] < height[rightIndex] {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
        
        return maxArea
    }
}

// MARK: - 66. 加一
extension LeetNumber {
    /// https://leetcode-cn.com/problems/plus-one/description/
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.count == 0 {
            return digits
        }
        
        var result = digits
        
        for i in 0 ..< digits.count {
            let index = digits.count - 1 - i
            let digit = digits[index] + 1
            if digit < 10 {
                result[index] = digit
                break
            } else {
                result[index] = digit - 10
                if index == 0 {
                    result.insert(1, at: 0)
                }
            }
        }
        
        return result
    }
}

extension LeetNumber {
    func consecutiveNumbersSum(_ N: Int) -> Int {
        /// 使用等差数列求和公式，a > 0，解一元二次方程
        var count = 0

        for i in 0 ..< N {
            let an = i * (i + 1) / 2
            if an > N {
                break
            }

        }

        return count
    }
}
