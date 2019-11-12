//
//  LTStringTableViewController.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/11.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

import ObjectiveC

class LTStringTableViewController: BaseTableViewController {
    
    let algorithms = [
        "3. 无重复字符的最长子串": "testLongestSubstring",
        "5. 最长回文子串": "testLongestPalindrome",
        "14. 最长公共前缀": "testCommonPrefix",
        "389. 找不同": "testFindTheDifference",
        "639. 解码方法": "testNumDecodings",
        "344. 反转字符串": "testReverseString"
    ]
    
    let leetString = LeetString()

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return algorithms.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        cell.textLabel?.text = Array(algorithms.keys)[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let title = tableView.cellForRow(at: indexPath)?.textLabel?.text, let selName = algorithms[title] {
            let sel = NSSelectorFromString(selName)
            leetString.perform(sel)
        }
    }

}
