//
//  LTHashSet.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/15.
//  Copyright © 2019 Renford. All rights reserved.
//

import UIKit

class LTHashSet: NSObject {

    var data = Array.init(repeating: 0, count: 1000001)

    override init() {

    }

    func add(_ key: Int) {
        if key >= 0 && key <= 1000000 {
            data[key] = 1
        }
    }

    func remove(_ key: Int) {
        if key >= 0 && key <= 1000000 {
            data[key] = 0
        }
    }

    /** Returns true if this set contains the specified element */
    func contains(_ key: Int) -> Bool {
        if key >= 0 && key <= 1000000 {
            if data[key] == 1 {
                return true
            }
        }
        return false
    }
}
