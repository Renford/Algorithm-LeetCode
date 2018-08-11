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
        "3. 无重复字符的最长子串",
        "5. 最长回文子串",
        "14. 最长公共前缀"
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
        // #warning Incomplete implementation, return the number of rows
        return algorithms.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        cell.textLabel?.text = algorithms[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        if indexPath.row == 0 {
            leetString.testLongestSubstring()
        } else if indexPath.row == 1 {
            leetString.testLongestPalindrome()
        } else if indexPath.row == 2 {
            leetString.testCommonPrefix()
        }
     }

}
