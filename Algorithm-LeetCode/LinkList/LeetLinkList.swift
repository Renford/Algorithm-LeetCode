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
    func array2LinkList(_ arr: [Int]) -> ListNode? {
        let head = ListNode(0)

        var currNode = head
        arr.forEach { (value) in
            let node = ListNode(value)
            currNode.next = node
            currNode = currNode.next!
        }

        return head.next
    }

    func travlLinkList(_ head: ListNode?) {
        var currNode = head
        while currNode != nil {
            if let node = currNode {
                print("node = ", node.val)
                currNode = node.next
            }
        }
    }

}

extension LeetLinkList {
    /// 21. 合并两个有序链表
    /// https://leetcode-cn.com/problems/merge-two-sorted-lists/description/
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var node: ListNode? = nil
        if let list1 = l1, let list2 = l2 {
            if list1.val > list2.val {
                node = list2
                node?.next = mergeTwoLists(list1, list2.next)
            } else {
                node = list1
                node?.next = mergeTwoLists(list1.next, list2)
            }
        } else if let list1 = l1 {
            node = list1
        } else if let list2 = l2 {
            node = list2
        }
        
        return node
    }

    /// 23. 合并K个有序链表
    /// https://leetcode-cn.com/problems/merge-k-sorted-lists/description/
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {

        var tempList: [ListNode?] = []
        lists.forEach { (list) in
            if let l = list {
                tempList.append(l)
            }
        }

        let head = ListNode(0)
        var currNode = head
        while tempList.count > 0 {
            var minValue = Int.max
            var tempNode: ListNode = ListNode(0)
            var tempIndex: Int = 0

            tempList.enumerated().forEach { (index, node) in
                if let n = node, minValue > n.val {
                    minValue = n.val
                    tempNode = n
                    tempIndex = index
                }
            }

            if minValue < Int.max {
                currNode.next = tempNode
                currNode = currNode.next!

                if let node = tempNode.next {
                    tempList[tempIndex] = node
                } else {
                    tempList.remove(at: tempIndex)
                }
            }
        }

        return head.next
    }
}
