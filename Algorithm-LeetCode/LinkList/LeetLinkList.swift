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
/// https://www.cnblogs.com/grandyang/p/4606710.html
class LeetLinkList: NSObject {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        let head = ListNode(0)

        var tempList: [ListNode] = []
        lists.forEach { (list) in
            if let l = list {
                tempList.append(l)
            }
        }

        while tempList.count > 0 {
            var minValue = Int.max
            var tempNode: ListNode = ListNode(0)

            tempList.enumerated().forEach { (index, node) in
                if minValue > node.val {
                    minValue = node.val
                    tempNode = node
                }
            }

            if minValue < Int.max {
                head.next = tempNode
            }
        }

        return head.next
    }
}
