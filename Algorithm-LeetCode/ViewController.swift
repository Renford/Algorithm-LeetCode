//
//  ViewController.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/7/26.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

//        testStringAlgorithm()

        testLinkListAlgorithm()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func testStringAlgorithm() {
        let str = LeetString()

//        str.testLongestSubstring()
//
//        str.testLongestPalindrome()

        str.testCommonPrefix()
    }

    func testLinkListAlgorithm() {
        let linkList = LeetLinkList()

        linkList.testMergeKLists()
    }
}

