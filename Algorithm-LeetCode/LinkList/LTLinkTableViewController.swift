//
//  LTLinkTableViewController.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/11.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LTLinkTableViewController: BaseTableViewController {

    let algorithms = [
        "19. 删除链表的倒数第N个节点": "testRemoveNthFromEnd",
        "21. 合并两个有序链表": "testMergeTwoLists",
        "23. 合并K个有序链表": "testMergeKLists",
        "83. 删除排序链表中的重复元素": "testDeleteDuplicates",
        "707. 设计链表": "testSinglyLikedList",
        "203. 移除链表元素": "testRemoveElements"
    ]

    let leetLink = LeetLinkList()

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
            leetLink.perform(sel)
        }
    }

}
