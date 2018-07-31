//
//  LeetString.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/7/27.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LeetString: NSObject {

    // 3. 无重复字符的最长子串
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var length = 0

        var i = 0
        var tempDic: [Character: Int] = [:]

        for j in 0 ..< s.count {
            let c = s[String.Index(encodedOffset: j)]
            if let index = tempDic[c] {
                i = max(i, index)
            }
            tempDic[c] = j + 1
            length = max(length, j - i + 1)
        }

        return length
    }

    // 5. 最长回文子串（如aa、abcba、abba）
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 {
            return s
        }

        var result: String = String(s.first!)
        var maxCount = 0

        for i in 0 ..< 2 * s.count - 1 {

            let length = min(i, abs(2 * s.count - 1 - i))

            for j in 0 ..< length {
                var index1 = 0
                var index2 = 0
                if i % 2 == 0 {
                    index1 = i - 2 * j
                    index2 = i + 2 * j
                } else {
                    index1 = i - (2 * j + 1)
                    index2 = i + (2 * j + 1)
                }

                index1 /= 2
                index2 /= 2

                if index1 < 0 || index2 >= s.count {
                    break
                }

                if s[String.Index(encodedOffset: index1)] != s[String.Index(encodedOffset: index2)] {
                    break
                }

                if maxCount < index2 - index1 {
                    maxCount = index2 - index1
                    result = String(s[String.Index(encodedOffset: index1) ... String.Index(encodedOffset: index2)])
                }
            }
        }

        return result
    }

    // 14. 最长公共前缀
    // https://leetcode-cn.com/problems/longest-common-prefix/description/
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }

        var result = ""

        var index = 0
        while true {
            if let char = checkKthEqual(strs, index) {
                result = "\(result)\(char)"
            } else {
                break
            }
            index += 1
        }

        return result
    }
}

// MARK: - private method
extension LeetString {
    func checkKthEqual(_ strs: [String], _ index: Int) -> Character? {
        var result: Character? = nil
        for i in 0 ..< strs.count {
            let str = strs[i]

            if index >= str.count {
                result = nil
                break
            }

            let char = str[String.Index(encodedOffset: index)]
            if i == 0 {
                result = char
            }

            if result != char {
                result = nil
                break
            }
        }

        return result
    }
}
