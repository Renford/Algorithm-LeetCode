//
//  LeetString+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/7/30.
//  Copyright © 2018年 Renford. All rights reserved.
//

extension LeetString {

    // test 3
    func testLongestSubstring() {
        print("\n=========最大无重复子串 111=========\n")

        let _ = lengthOfLongestSubstring("abcfdefg")

        print("\n=========最大无重复子串 111=========\n")
    }

    // test 5
    func testLongestPalindrome() {
        let array = [
            "",
            "a",
            "bb",
            "ab",
            "ccc",
            "bbbb",
            "asdf",
            "abcba",
            "abccba",
            "asdffasdfasdfasdf",
            ]

        print("\n=========最大回文 111=========\n")
        array.forEach { (str) in
            let result = longestPalindrome(str)
            print("\(str) palindrome: \(result)")
        }
        print("\n=========最大回文 222=========\n")
    }

    // test 14
    func testCommonPrefix() {
        let array = [
            [],
            [""],
            ["", "asd", "sd"],
            ["asdf", "a", "aaaa"],
            ["dfgh", "aaaa", "degc"],
            ["asdfg", "asdfg", "asdfg"],
            ]

        print("\n=========最大前缀 111=========\n")
        array.forEach { (str) in
            let result = longestCommonPrefix(str)
            print("\(str) common prefix: \(result)")
        }
        print("\n=========最大前缀 222=========\n")
    }
}