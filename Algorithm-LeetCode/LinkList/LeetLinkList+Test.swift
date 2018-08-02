//
//  LeetLinkList+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetLinkList {
    func testMergeKLists() {
        print("\n=========有序链表合并 begin =========\n")

        var array = [
            [1, 3, 5],
            [2, 4, 6],
            [8]
        ]

        for _ in 0 ..< 10000 {
            array.append([Int(arc4random() % 100 + 1)])
        }

        let lists = array.compactMap { (arr) -> ListNode? in
            return array2LinkList(arr)
        }

        print("==================合并前\n")
        lists.forEach { (head) in
            print("\n==================\n")
            travlLinkList(head)
        }

        print("==================合并后\n")
        let head = mergeKLists(lists)
        travlLinkList(head)

        print("\n=========有序链表合并 end =========\n")
    }
}
