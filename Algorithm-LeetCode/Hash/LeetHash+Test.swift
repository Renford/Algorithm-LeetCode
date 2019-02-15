//
//  LeetHash+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/15.
//  Copyright © 2019 Renford. All rights reserved.
//

import Foundation

extension LeetHash {
    @objc func testLTHashSet() {
        let hashSet = LTHashSet()
        hashSet.add(0);
        hashSet.add(100);
        hashSet.add(1000001);
        let ret1 = hashSet.contains(0);
        let ret2 = hashSet.contains(100);
        let ret3 = hashSet.contains(1000001);
        hashSet.remove(100);
        let ret4 = hashSet.contains(100);
        print("===result:\(ret1) \(ret2) \(ret3) \(ret4)")
    }
}
