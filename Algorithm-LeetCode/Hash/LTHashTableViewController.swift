//
//  LTHashTableViewController.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/15.
//  Copyright © 2019 Renford. All rights reserved.
//

import UIKit

class LTHashTableViewController: BaseTableViewController {

    let algorithms = [
        "1. 两数之和": "testTwoSum",
        "136. 只出现一次的数字": "testSingleNumber",
        "202. 快乐数": "testIsHappy",
        "205. 同构字符串": "testIsIsomorphic",
        "217. 存在重复元素": "testContainsDuplicate",
        "219. 存在重复元素 II": "testContainsNearbyDuplicate",
        "349. 两个数组的交集": "testIntersection",
        "350. 两个数组的交集 II": "testIntersect",
        "387. 字符串中的第一个唯一字符": "testFirstUniqChar",
        "599. 两个列表的最小索引总和": "testFindRestaurant",
        "705. 设计哈希集合": "testLTHashSet",
        "706. 设计哈希映射": "testLTHashMap",
    ]

    let leetHash = LeetHash()

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
            leetHash.perform(sel)
        }
    }
}
