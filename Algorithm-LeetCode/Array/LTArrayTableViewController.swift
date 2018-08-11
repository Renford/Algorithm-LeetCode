//
//  LTArrayTableViewController.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/11.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LTArrayTableViewController: BaseTableViewController {
    
    let leetArray = LeetArray()
    
    let algorithms = [
        "507. 完美数",
        "4. 两个排序数组的中位数",
        "153. 寻找旋转排序数组@objc @objc @objc (如[4,5,6,7,0,1,2,3])中的最小值",
        "554. 砖墙",
        "757. 设置交集大小至少为2"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

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
            leetArray.testPerfectNumber()
        } else if indexPath.row == 1 {
            leetArray.testMedianNumber()
        } else if indexPath.row == 2 {
            leetArray.testFindMin()
        } else if indexPath.row == 3 {
            leetArray.testLeastBricks()
        } else if indexPath.row == 4 {
            leetArray.testIntersectionSizeTwo()
        }
    }

}
