//
//  LeetDynamic.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/24.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LeetDynamic: NSObject {

}

// MARK: - 322. 零钱兑换
extension LeetDynamic {
    /// https://leetcode-cn.com/problems/coin-change/description/
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        
        if coins.count == 0 {
            return -1
        }
        
        if amount == 0 {
            return 0
        }
        
        var dp = Array<Int>(repeating: 0, count: amount + 1)
        for i in 1 ... amount {
            var minCount = Int.max
            for j in 0 ..< coins.count {
                if i >= coins[j] && dp[i - coins[j]] != -1 {
                    minCount = min(minCount, dp[i - coins[j]] + 1)
                }
            }
            
            dp[i] = minCount == Int.max ? -1 : minCount
        }
        
        return dp[amount]
    }
}

extension LeetDynamic {
    func numDecodings(_ s: String) -> Int {
        var f1 = 1
//        var f2 = numString(s[0 ... 1])
        for i in 1 ..< s.count {

        }
        return 0
    }

    func numString(_ s: String) -> Int {
        var count = 0
        if s.count == 1 {
            count = s == "*" ? 9 : 1
        } else if s.count == 2 {
            if s == "**" {
                count = 15
            } else if s[String.Index(encodedOffset: 0)] == "*" {
                let value = (s[String.Index(encodedOffset: 1)].unicodeScalars.first?.value)!
                if value <= 6 {
                    count = 2
                } else {
                    count = 1
                }
            } else if s[String.Index(encodedOffset: 1)] == "*" {
                if s[String.Index(encodedOffset: 0)] == "1" {
                    count = 9
                } else if s[String.Index(encodedOffset: 0)] == "2" {
                    count = 6
                }
            } else {
                if let value = Int(s) {
                    if value > 10 && value <= 26 {
                        count = 1
                    }
                }
            }
        }

        return count
    }
}
