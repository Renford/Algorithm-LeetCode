//
//  LeetLinkList.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/7/31.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class LeetLinkList: NSObject {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        let head = ListNode(0)

        var hasNext = false
        while true {

            var tempList: [ListNode?] = []
            lists.forEach { (list) in
                list?.next
            }

        }

        return head.next
    }
}
