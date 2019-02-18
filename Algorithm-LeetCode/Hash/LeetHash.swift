//
//  LeetHash.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/15.
//  Copyright © 2019 Renford. All rights reserved.
//

import Foundation

class LeetHash: NSObject {
}

// MARK: - 217. 存在重复元素
extension LeetHash {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                return true
            } else {
                set.insert(num)
            }
        }
        return false
    }
}

// MARK: - 136. 只出现一次的数字
extension LeetHash {
    func singleNumber(_ nums: [Int]) -> Int {
        var res = 0
        nums.forEach { (num) in
            res ^= num
        }
        return res
    }
}

// MARK: - 349. 两个数组的交集
extension LeetHash {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)

        var res: [Int] = []
        set1.forEach { (num) in
            if set2.contains(num) {
                res.append(num)
            }
        }
        return res
    }
}
