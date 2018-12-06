//
//  LTTreeTableViewController.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/11.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LTTreeTableViewController: BaseTableViewController {
    let algorithms = [
        "110. 平衡二叉树",
        "103. 二叉树的锯齿形层次遍历",
        "652. 寻找重复的子树",
        "101. 对称二叉树"
    ]

    let leetTree = LeetTree()

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

        cell.textLabel?.text = algorithms[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        if indexPath.row == 0 {
            leetTree.testIsBalanced()
        } else if indexPath.row == 1 {
            leetTree.testZigzagLevelOrder()
        } else if indexPath.row == 2 {
            leetTree.testFindDuplicateSubtrees()
        } else if indexPath.row == 3 {
            leetTree.testIsSymmetric()
        }
    }

}
