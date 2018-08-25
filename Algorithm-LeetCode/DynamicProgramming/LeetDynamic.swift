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
