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
        "705. 设计哈希集合": "testLTHashSet",
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
