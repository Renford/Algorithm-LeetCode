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

// MARK: - 258. 各位相加
// https://leetcode-cn.com/problems/add-digits/description/
extension LeetNumber {
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
