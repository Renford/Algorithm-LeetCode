//
//  LeetDynamic+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/24.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation


extension LeetDynamic {
    func testCoinChange() {
        print("========零钱兑换begin=========\n")
        let arrary = [
            [[1, 2, 5], [12]],
            //            [[2, 5], [11]],
            //            [[5], [0]],
            //            [[186, 419, 83, 408], [6249]]
        ]
        
        arrary.forEach { (arr) in
            let result = coinChange(arr[0], arr[1][0])
            print(arr, "cion count：", result)
        }
        print("========零钱兑换end=========\n")
    }
}
