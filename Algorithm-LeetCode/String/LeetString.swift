//
//  LeetString.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/7/27.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LeetString: NSObject {




}

// MARK: - 3. 无重复字符的最长子串
extension LeetString {
    /// https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/description/
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
}

// MARK: - 5. 最长回文子串（如aa、abcba、abba）
extension LeetString {
    /// https://leetcode-cn.com/problems/longest-palindromic-substring/description/
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
}

// MARK: - 14. 最长公共前缀
extension LeetString {
    /// https://leetcode-cn.com/problems/longest-common-prefix/description/
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

// MARK: - 10. 正则表达式匹配
extension LeetString {
    /// https://leetcode-cn.com/problems/regular-expression-matching/description/
    func isMatch(_ s: String, _ p: String) -> Bool {

        p.enumerated().forEach { (index, char) in

        }

        return false
    }
}

// MARK: - 389. 找不同
extension LeetString {
    /// https://leetcode-cn.com/problems/find-the-difference/description/
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var tempDic: [Character: Int] = [:]
        t.forEach { (char) in
            if let count = tempDic[char] {
                tempDic[char] = count + 1
            } else {
                tempDic[char] = 1
            }
        }

        s.forEach { (char) in
            if let count = tempDic[char] {
                if count == 1 {
                    tempDic.removeValue(forKey: char)
                } else {
                    tempDic[char] = count - 1
                }
            }
        }

        return tempDic.keys.first ?? Character(" ")
    }
}

// MARK: - 639. 解码方法
extension LeetString {
    /// https://leetcode-cn.com/problems/decode-ways-ii/description/
    func numDecodings(_ s: String) -> Int {
        
        if s.count > 100000 {
            return 0
        }
        
        var count = 0
        for index in 0 ..< s.count {
            let char = s[String.Index(encodedOffset: index)]
            if char == Character.init("*") {
                count += 9
                
                if index - 1 >= 0 {
                    let tempChar = s[String.Index(encodedOffset: index - 1)]
                    if tempChar == Character.init("1") {
                        count += 9
                    } else if tempChar == Character.init("2") {
                        count += 6
                    } else if tempChar == Character.init("*") {
                        count += 9 * 9 + 9 + 6 - 9 * 2
                    }
                }
            } else {
                if index - 1 >= 0 {
                    let tempChar = s[String.Index(encodedOffset: index - 1)]
                    if tempChar == Character.init("1") {
                        count += 1
                    } else if tempChar == Character.init("2") && (char.unicodeScalars.first?.value)! <= 6 {
                        count += 1
                    } else if tempChar == Character.init("*") {
                        count += 2
                    }
                }
            }
        }
        
        return count
    }
}

// MARK: - 二进制求和
extension LeetString {
//    func addBinary(_ a: String, _ b: String) -> String {
//        let count = max(a.count, b.count)
//        for i in 0 ..< count {
//            
//        }
//    }
}

// MARK: - private method
extension LeetString {
    fileprivate func checkKthEqual(_ strs: [String], _ index: Int) -> Character? {
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

