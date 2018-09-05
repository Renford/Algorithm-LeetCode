//
//  LeetArray+Test.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import Foundation

extension LeetArray {
    @objc func testPerfectNumber() {
        let array = [1, 2, 3, 5, 6, 28, 9999991]
        for num in array {
            let result = checkPerfectNumber(num)
            print("===\(num)", result)
        }
    }
    
    @objc func testMedianNumber() {
        let array = [
            [[], []],
            [[1], []],
            [[1, 2], []],
            [[1], [7, 8]],
            [[1, 7, 8], [2, 3, 4]],
            [[1, 7, 8], [2, 3, 4, 7, 8]]
        ]
        print("========中位数测试开始=========\n")
        array.forEach { (arr) in
            let midNumber = findMedianSortedArrays(arr[0], arr[1])
            print("数组：", arr[0], arr[1], "===中位数：", midNumber)
        }
        print("========中位数测试结束=========\n")
    }
    
    @objc func testFindMin() {
        let array = [
            [],
            [1],
            [1, 2],
            [2, 1],
            [1, 2, 3],
            [6, 1, 2, 3],
            [6, 7, 8, 1, 2, 3],
            [6, 7, 8, 1],
            ]
        print("========升序旋转数组测试开始=========\n")
        array.forEach { (arr) in
            let min = findMin(arr)
            print("数组：", arr, "===最小值：", min)
        }
        print("========升序旋转数组测试结束=========\n")
    }

    @objc func testLeastBricks() {
        print("========砖墙 begin=========\n")
        let array = [
            [1,2,2,1,2,2,1],
            [3,1,3,2,1,1],
            [1,3,2,1,4],
            [2,4,5],
            [3,1,2,1,1,3],
            [1,3,1,1,1,4]
        ]

        let result = leastBricks(array)
        print("result:", result)
        print("========砖墙 end=========\n")
    }
    
    @objc func testIntersectionSizeTwo() {
        print("========交集大小 begin=========\n")
        let arr: [[Int]] = [
            [12, 19],
            [18, 25],
            [4, 6],
            [19, 24],
            [19, 22]
        ]
        let result = intersectionSizeTwo(arr)
        print("交集大小：", result)
        print("========交集大小end=========\n")
    }

    @objc func testNumBusesToDestination() {
        var tempArray: [Int] = []
        for i in 0 ... 9999 {
            tempArray.append(i)
        }
        print("========公交线路end=========\n", Date().timeIntervalSince1970)
        let array = [
//            [
//                [1, 2, 7],
//                [3, 6, 7]
//            ],
//            [
//                [0,1,6,16,22,23],
//                [14,15,24,32],
//                [4,10,12,20,24,28,33],
//                [1,10,11,19,27,33],
//                [11,23,25,28],
//                [15,20,21,23,29],
//                [29]
//            ],
            [
                tempArray
            ]
        ]

        array.forEach { (arr) in
            let result = numBusesToDestination(arr, 0, 9999)
            print("公交线路", arr)
            print("最小路劲", result)
        }

        print("========公交线路end=========\n", Date().timeIntervalSince1970)
    }
    
    
    @objc func testDominantIndex() {
        print("\n=========最大值 begin=========\n")
        let array = [
            [],
            [9],
            [1, 2, 1],
            [0, 0, 0, 1],
            [1,8,6,2,5,4,8,3,7]
        ]
        array.forEach { (arr) in
            let result = dominantIndex(arr)
            print("digits: \(arr),max value result: \(result)")
        }
        
        print("\n=========最大值 end=========\n")
    }

    @objc func testSpiralOrder() {
        print("\n=========螺旋矩阵 begin=========\n")
        let array = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9,10,11,12]
        ]
        
        let arr = spiralOrder(array)
        print("array:", array, "\narr:", arr)
        print("\n=========螺旋矩阵 end=========\n")
    }
    
    @objc func testGenerate() {
        print("\n=========杨辉三角 begin=========\n")
        let arr = [0, 1, 2, 3, 6]
        arr.forEach { (value) in
            let result = generate(value)
            print("value: \(value)\n", result)
        }
        
        print("\n=========杨辉三角 end=========\n")
    }
}
