//
//  LeetLinkList+Test.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetLinkList {
    
    @objc func testMergeTwoLists() {
        print("\n=========两个有序链表合并 begin =========\n")
        let array = [
            [[1, 8, 9], [2, 3, 4]],
            [[], [2, 3, 4]],
            [[], []],
        ]
        
        array.forEach { (arr) in
            let l1 = array2LinkList(arr[0])
            let l2 = array2LinkList(arr[1])
            
            let head = mergeTwoLists(l1, l2)
            
            print("=========合并结果=========")
            travlLinkList(head)
        }
        
        print("\n=========两个有序链表合并 end =========\n")
    }
    
    @objc func testMergeKLists() {
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
    
    @objc func testRemoveNthFromEnd() {
        print("\n=========删除倒数第n个节点 begin =========\n")
        
        let array = [
            [1, 4, 5, 2, 3],
            []
        ]
        
        array.forEach { (arr) in
            let list = array2LinkList(arr)
            print("delete before：\n")
            travlLinkList(list)
            let result = removeNthFromEnd(list, 5)
            print("delete after：\n")
            travlLinkList(result)
        }
        
        print("\n=========删除倒数第n个节点 end =========\n")
    }

    @objc func testDeleteDuplicates() {
        print("\n=========删除重复节点 begin =========\n")

        let array = [
            [1, 2, 3, 4, 5],
            [1, 2, 2, 4, 4],
            [1, 1, 1, 1, 1],
            []
        ]

        array.forEach { (arr) in
            let list = array2LinkList(arr)
            print("delete before：\n")
            travlLinkList(list)
            let result = deleteDuplicates(list)
            print("delete after：\n")
            travlLinkList(result)
        }

        print("\n=========删除重复节点 end =========\n")
    }

    @objc func testSinglyLikedList() {
        let obj = MyLinkedList()
        obj.addAtHead(5)
        obj.addAtHead(2)
        obj.deleteAtIndex(1)
        obj.printLinkedList("0")
        obj.addAtIndex(1, 9)
        obj.addAtHead(4)
        obj.addAtHead(9)
        obj.addAtHead(8)
        obj.deleteAtIndex(4)
        obj.printLinkedList("1")
        obj.addAtTail(1)
        obj.printLinkedList("2")
        obj.addAtIndex(3,6)
        obj.printLinkedList("3")
        obj.addAtHead(3)
        obj.printLinkedList("4")
    }

    @objc func testRemoveElements() {
        let array = [
            [1, 2, 1, 1],
            [1, 1, 1]
        ]
        array.forEach { (arr) in
            let head = array2LinkList(arr)

            travlLinkList(head)
            let relHead = removeElements(head, 1)

            travlLinkList(relHead)
        }

    }

    @objc func testOddEvenList() {
        let array = [
            [1, 2, 3, 4, 5],
            [1],
            []
        ]
        array.forEach { (arr) in
            let head = array2LinkList(arr)

            let relHead = oddEvenList(head)
            travlLinkList(relHead)
        }
    }

    @objc func testIsPalindrome() {
        let array = [
            [1, 2, 3, 2, 1],
            [1, 2, 2, 1],
            [1, 2, 3],
            [1],
            []
        ]
        array.forEach { (arr) in
            let head = array2LinkList(arr)
            let result = isPalindrome(head)
            print("===arr:\(arr), result:\(result)")
        }
    }

    @objc func testAddTwoNumbers() {
        let array = [
            [[2, 4, 3], [5, 6, 4]],
            [[1, 2, 3], [5, 5, 5]],
            [[1], [1, 1, 1]],
            [[1], [9, 9]]
        ]
        array.forEach { (arr) in
            print("===\(arr)")
            let head1 = array2LinkList(arr[0])
            let head2 = array2LinkList(arr[1])
            let result = addTwoNumbers(head1, head2)
            travlLinkList(result)
        }
    }

    @objc func testRotateRight() {

    }
}
