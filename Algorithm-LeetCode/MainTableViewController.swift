//
//  MainTableViewController.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/11.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class MainTableViewController: BaseTableViewController {
    
    var dataArray: [String] = ["数字", "字符串", "数组", "链表", "树"]

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
        return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)

        cell.textLabel?.text = dataArray[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        var vc: UIViewController?
        if indexPath.row == 0 {
            vc = LTNumberTableViewController()
        } else if indexPath.row == 1 {
            vc = LTStringTableViewController()
        } else if indexPath.row == 2 {
            vc = LTArrayTableViewController()
        } else if indexPath.row == 3 {
            vc = LTLinkTableViewController()
        } else if indexPath.row == 4 {
            vc = LTTreeTableViewController()
        }
        
        if let controller = vc {
            controller.title = dataArray[indexPath.row]
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }

}
