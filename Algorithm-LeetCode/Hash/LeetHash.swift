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

// MARK: - 219. 存在重复元素 II
extension LeetHash {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dic: [Int: [Int]] = [:]
        for (index, num) in nums.enumerated() {
            if var arr = dic[num], arr.count > 0 {
                for temp in arr {
                    if abs(temp - index) <= k {
                        return true
                    }
                }
                arr.append(index)
                dic[num] = arr
            } else {
                dic[num] = [index]
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

// MARK: - 350. 两个数组的交集 II
extension LeetHash {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var dic: [Int: Int] = [:]
        nums1.forEach { (num) in
            if let count = dic[num] {
                dic[num] = count + 1
            } else {
                dic[num] = 1
            }
        }
        
        var result: [Int] = []
        nums2.forEach { (num) in
            if let count = dic[num], count > 0 {
                result.append(num)
                dic[num] = count - 1
            }
        }
        
        return result
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

// MARK: - 205. 同构字符串
extension LeetHash {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var sDic: [Character: Character] = [:]
        var tDic: [Character: Character] = [:]
        for (i, sc) in s.enumerated() {
            let tc = t[String.Index(encodedOffset: i)]

            if let tempTc = sDic[sc], tempTc != tc {
                return false
            }

            if let tempSc = tDic[tc], tempSc != sc {
                return false
            }

            sDic[sc] = tc
            tDic[tc] = sc
        }

        return true
    }
}

// MARK: - 599. 两个列表的最小索引总和
extension LeetHash {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        let dic1 = list1.enumerated().reduce([:]) { (dic, item) -> [String: Int] in
            let (index, value) = item
            var tempDic = dic
            tempDic[value] = index
            return tempDic
        }
        let dic2 = list2.enumerated().reduce([:]) { (dic, item) -> [String: Int] in
            let (index, value) = item
            var tempDic = dic
            tempDic[value] = index
            return tempDic
        }

        var result: [String] = []
        var sum = Int.max
        dic1.keys.forEach { (name) in
            if dic2.keys.contains(name) {
                if let index1 = dic1[name], let index2 = dic2[name] {
                    if sum > index1 + index2 {
                        sum = index1 + index2
                        result = [name]
                    } else if sum == index1 + index2 {
                        result.append(name)
                    }
                }
            }
        }

        return result
    }
}

// MARK: - 387. 字符串中的第一个唯一字符
extension LeetHash {
    func firstUniqChar(_ s: String) -> Int {
        var result = -1
        for (index, value) in s.enumerated() {
            if let lastIndex = s.lastIndex(of: value), let firstIndex = s.firstIndex(of: value), firstIndex == lastIndex {
                result = index
                break
            }
        }
        return result
    }
}

// MARK: - 49. 字母异位词分组
extension LeetHash {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dic: [String: [String]] = [:]
        strs.forEach { (str) in
            let key = getSortedStr(str)
            var arr: [String] = []
            if let tempArr = dic[key] {
                arr = tempArr
            }
            arr.append(str)
            dic[key] = arr
        }
        
        return dic.keys.compactMap { (key) -> [String] in
            return dic[key]!
        }
    }
    
    fileprivate func getSortedStr(_ str: String) -> String {
        return str.sorted().description
    }
}

// MARK: - 347. 前K个高频元素
extension LeetHash {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dic: [Int: Int] = [:]
        nums.forEach { (num) in
            if let count = dic[num] {
                dic[num] = count + 1
            } else {
                dic[num] = 1
            }
        
        }
        
        var map: [Int: [Int]] = [:]
        dic.keys.forEach { (key) in
            if let count = dic[key], var arr = map[count] {
                arr.append(key)
                map[count] = arr
            } else {
                map[dic[key]!] = [key]
            }
        }
        
        let keyArr = map.keys.sorted().reversed()
        if keyArr.count < k {
            return nums
        }
        
        var result: [Int] = []
        Array(keyArr.prefix(k)).forEach { (key) in
            result += map[key]!
        }
	}
}
        
// MARK: - 771. 宝石与石头
extension LeetHash {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var result = 0

        S.forEach { (c) in
            if J.contains(c) {
                result += 1
            }
        }

        return result
    }
}
