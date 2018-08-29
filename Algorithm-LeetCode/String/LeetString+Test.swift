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

        let arr = [
            "abcsdf",
            "bb",
            "abccds"
        ]
        
        arr.forEach { (str) in
            let result = lengthOfLongestSubstring(str)
            print("\(str) substring : ", result)
        }
        

        print("\n=========最大无重复子串 222=========\n")
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

    /// test 389
    func testFindTheDifference() {
        let array = [
            ["", ""],
            ["abcd", "abcde"],
            ["abfcd", "dbcaff"]
        ]

        print("\n=========找不同 111=========\n")
        array.forEach { (arr) in
            let result = findTheDifference(arr[0], arr[1])
            print("\(arr) defference: \(result)")
        }
        print("\n=========找不同 222=========\n")
    }
    
    func testNumDecodings() {
        print("\n========解码 111=========\n")
        let array = [
            "",
            "*",
            "1*",
            "**",
        ]
        
        array.forEach { (str) in
            let result = numDecodings(str)
            print("\(str) result: \(result)")
        }
        print("\n=========解码 222=========\n")
    }
}
