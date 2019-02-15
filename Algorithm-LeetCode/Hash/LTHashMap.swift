//
//  LTHashMap.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/15.
//  Copyright © 2019 Renford. All rights reserved.
//

import UIKit

class LTHashMap: NSObject {
    var data = Array.init(repeating: -1, count: 1000001)

    override init() {

    }

    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        if key >= 0 && key <= 1000000 {
            data[key] = value
        }
    }

    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        if key >= 0 && key <= 1000000 {
            return data[key]
        }
        return -1
    }

    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        if key >= 0 && key <= 1000000 {
            data[key] = -1
        }
    }
}
