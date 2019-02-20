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

// MARK: - 202. 快乐数
extension LeetHash {
    func isHappy(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        
        var set = Set<Int>()
        var sum = n
        while true {
            var temp = sum
            sum = 0
            while temp > 0 {
                let num = temp % 10
                sum += num * num
                temp /= 10
            }

            if sum == 1 {
                return true
            } else if set.contains(sum) {
                break
            }

            set.insert(sum)
        }
        return false
    }
}

// MARK: - 1. 两数之和
extension LeetHash {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []

        var dic = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let temp = target - num
            if dic.keys.contains(temp) {
                result = [dic[temp]!, index]
                break
            } else {
                if !dic.keys.contains(num) {
                    dic[num] = index
                }
            }
        }

        return result
    }
}
