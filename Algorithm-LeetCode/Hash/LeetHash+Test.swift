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

    @objc func testLTHashMap() {
        let hashMap = LTHashMap()
        hashMap.put(1, 1);
        hashMap.put(2, 2);
        let ret1 = hashMap.get(2);
        let ret3 = hashMap.get(3);
        hashMap.put(2, 1);
        let ret2 = hashMap.get(2);
        hashMap.remove(2);
        let ret22 = hashMap.get(2);
        print("===result: \(ret1) \(ret3) \(ret2) \(ret22)")
    }

    @objc func testContainsDuplicate() {
        let array = [
            [1, 2, 3, 4],
            [1, 1, 1],
            [1],
            []
        ]

        array.forEach { (arr) in
            let result = containsDuplicate(arr)
            print("===\(arr)===result:\(result)")
        }
    }

    @objc func testContainsNearbyDuplicate() {
        let dic = [
            3: [1, 2, 3, 1],
            1: [1, 0, 1, 1],
            2: [1, 2, 3, 1, 2, 3],
        ]
        dic.keys.forEach { (key) in
            if let arr = dic[key] {
                let result = containsNearbyDuplicate(arr, key)
                print("===nearby duplicate result: \(arr), \(key)\n\(result)")
            }
        }

    }

    @objc func testSingleNumber() {
        let array = [
            [1, 2, 2, 3, 3],
            [1, 6, 1],
            [1, 1],
            [6]
        ]

        array.forEach { (arr) in
            let result = singleNumber(arr)
            print("===\(arr)===result:\(result)")
        }
    }

    @objc func testIntersection() {
        let array = [
            [[1, 2, 2, 3, 3], [1, 3]],
            [[1, 3], [1, 3]],
            [[1], [1, 3]],
            [[], []],
        ]

        array.forEach { (arr) in
            let result = intersection(arr[0], arr[1])
            print("===\(arr)===result:\(result)")
        }

    }

    @objc func testIntersect() {
        let array = [
            [[1, 2, 2, 3, 3], [1, 3, 3]],
            [[1, 3], [1, 3]],
            [[1], [1, 3]],
            [[], []],
            ]

        array.forEach { (arr) in
            let result = intersect(arr[0], arr[1])
            print("===\(arr)===result:\(result)")
        }
    }

    @objc func testIsHappy() {
        let array = [
            19, 20, 21, 22, 1
        ]

        array.forEach { (num) in
            let result = isHappy(num)
            print("===\(num)===result:\(result)")
        }
    }

    @objc func testTwoSum() {
        let result = twoSum([1, 2, 3, 4], 5)
        print("===two num: sum:\(result)")
    }

    @objc func testIsIsomorphic() {
        let arrary = [
            ["aab", "ddc"],
            ["abd", "dsd"],
            ["a", "d"],
            ["b", "ccc"]
        ]

        arrary.forEach { (arr) in
            let result = isIsomorphic(arr[0], arr[1])
            print("===str:\(arr)===result:\(result)")
        }
    }

    @objc func testFindRestaurant() {
        let array = [
            [["111", "666", "1223", "222"], ["111", "222"]],
            [["111", "222"], ["111", "222"]],
            [["111", "222"], ["222", "111"]],
            [["111"], ["111", "333", "555"]],
            [["111"], ["123", "333"]],
        ]

        array.forEach { (arr) in
            let result = findRestaurant(arr[0], arr[1])
            print("===str:\(arr)===result:\(result)")
        }
    }

    @objc func testFirstUniqChar() {
        let array = ["arrrra", "aaaar", "adsda"]
        array.forEach { (str) in
            let result = firstUniqChar(str)
            print("===str:\(str)===result:\(result)")
        }
    }
    
    @objc func testGroupAnagrams() {
        let array = [
            ["eat", "tea", "tan", "ate", "nat", "bat"],
            ["eat", "tea", "tan", "ate"],
            ["eat", "tea"],
        ]
        
        array.forEach { (arr) in
            let result = groupAnagrams(arr)
            print("===str:\(arr)===result:\(result)")
        }
    }

    @objc func testNumJewelsInStones() {
        let array = [
            ["aA", "aAAbbbb"],
            ["ab", "aabbd"]
        ]

        array.forEach { (arr) in
            let result = numJewelsInStones(arr[0], arr[1])
            print("===str:\(arr)===result:\(result)")
        }
    }
}
