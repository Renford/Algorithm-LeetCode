//
//  SinglyLikedList.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/11.
//  Copyright © 2019 Renford. All rights reserved.
//

class MyLinkedNode {
    var val: Int = 0
    var next: MyLinkedNode?

    init(_ value: Int) {
        val = value
        next = nil
    }
}


public class MyLinkedList {

    var head: MyLinkedNode!
    var tail: MyLinkedNode?

    /** Initialize your data structure here. */
    init() {
        head = MyLinkedNode(0);
        tail = nil
    }

    func printLinkedList(_ prefix: String) {
        var i = 0

        print("\n===linkedNode===\(prefix):")
        while i < head.val {
            let val = get(i)
            print(val)
            i += 1
        }
//        var node = head.next
//        while let currNode = node {
//            print("===linkedNode===\(prefix):", currNode.val)
//            node = currNode.next
//        }
    }

    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        if index < 0 || index >= head.val {
            return -1
        }

        var i = 0
        var val = -1
        var node = head.next
        while i < head.val {
            if i == index, let currNode = node {
                val = currNode.val
                break
            }
            i += 1
            node = node?.next
        }

        return val
    }

    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let obj = MyLinkedNode(val)
        obj.next = head.next
        head.next = obj

        if head.val == 0 {
            tail = obj
        }

        head.val += 1
    }

    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        let obj = MyLinkedNode(val)
        if head.val == 0 {
            head.next = obj
            tail = obj
        } else {
            if let tailNode = tail {
                tailNode.next = obj
                tail = obj
            }
        }

        head.val += 1
    }

    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        if index < 0 || index > head.val {
            return
        }

        if index == 0 {
            addAtHead(val)
        } else if index == head.val {
            addAtTail(val)
        } else {
            let obj = MyLinkedNode(val)

            var i = 0
            var node = head.next
            while i < head.val {
                if i == index - 1, let currNode = node {
                    obj.next = currNode.next
                    currNode.next = obj
                    break
                }
                i += 1
                node = node?.next
            }

            head.val += 1
        }
    }

    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        if index < 0 || index >= head.val {
            return
        }

        var i = 0
        var prev = head
        var node = head.next
        while i < head.val {
            if i == index {
                prev?.next = node?.next
                if index == head.val - 1 {
                    tail = prev
                }
                break
            }
            i += 1
            prev = node
            node = node?.next
        }

        head.val -= 1
    }
}
