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
        "507. 完美数": "testPerfectNumber",
        "4. 两个排序数组的中位数": "testMedianNumber",
        "153. 寻找旋转排序数组中的最小值": "testFindMin",
        "554. 砖墙": "testLeastBricks",
        "757. 设置交集大小至少为2": "testIntersectionSizeTwo",
        "815. 公交路线": "testNumBusesToDestination",
        "747. 至少是其他数字两倍的最大数": "testDominantIndex",
        "54.螺旋矩阵": "testSpiralOrder",
        "118.杨辉三角": "testGenerate",
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
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
            leetArray.perform(sel)
        }
    }

}
