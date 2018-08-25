//
//  LeetArray.swift
//  Algorithm-LeetCode
//
//  Created by Renford on 2018/8/2.
//  Copyright © 2018年 Renford. All rights reserved.
//

import UIKit

class LeetArray: NSObject {
    
}

// MARK: - 507. 完美数
extension LeetArray {
    /// https://leetcode-cn.com/problems/perfect-number/description/
    func checkPerfectNumber(_ num: Int) -> Bool {
        if num <= 1 {
            return false
        }
        
        let value = sqrt(Double(num))
        if value.isNaN || value.isInfinite {
            return false
        }
        
        let max = Int(value)
        if max < 2 {
            return false
        }
        
        var tempValue: Int = 1
        for index in 2 ... max {
            if num % index == 0 {
                tempValue += index
                tempValue += num / index
            }
        }
        
        return tempValue == num
    }
    
}

// MARK: - 4. 两个排序数组的中位数
extension LeetArray {
    
    /// https://leetcode-cn.com/problems/median-of-two-sorted-arrays/description/
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        var result: Double = 0.0
        
        let count = nums1.count + nums2.count
        let mid = count / 2
        
        var nums: [Int] = []
        if count == 0 {
            return Double.infinity
        } else if nums1.count == 0 {
            nums = nums2
        } else if nums2.count == 0 {
            nums = nums1
        } else {
            var i = 0
            var j = 0
            while nums.count <= mid && i < nums1.count && j < nums2.count {
                if nums1[i] < nums2[j] {
                    nums.append(nums1[i])
                    i += 1
                } else {
                    nums.append(nums2[j])
                    j += 1
                }
            }
            
            if nums.count <= mid {
                if i < nums1.count {
                    while nums.count <= mid && i < nums1.count {
                        nums.append(nums1[i])
                        i += 1
                    }
                } else if j < nums2.count {
                    while nums.count <= mid && j < nums2.count {
                        nums.append(nums2[j])
                        j += 1
                    }
                }
            }
        }
        
        if count % 2 == 0 {
            result = Double(nums[mid - 1] + nums[mid]) / 2.0
        } else {
            result = Double(nums[mid])
        }
        
        return result
    }
    

}

// MARK: - 153. 寻找旋转排序数组(如[4,5,6,7,0,1,2,3])中的最小值
extension LeetArray {

    /// https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array/description/
    func findMin(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return Int.max
        } else if nums.count == 1 {
            return nums[0]
        } else if nums.count == 2 {
            return nums[0] > nums[1] ? nums[1] : nums[0]
        }
        
        var min = 0
        var max = nums.count - 1
        var mid = (min + max) / 2
        
        var minValue = nums[min]
        
        while mid > min && mid < max {
            if nums[mid] > nums[max] {
                if mid == max - 1 {
                    minValue = nums[max]
                    break
                }
                min = mid
                mid = (min + max) / 2
            } else if nums[mid] < nums[min] {
                if mid == min + 1 {
                    minValue = nums[mid]
                    break
                }
                max = mid
                mid = (min + max) / 2
            } else {
                // 顺序
                minValue = nums[min]
                break
            }
        }
        
        return minValue
    }
}

// MARK: - 554. 砖墙
extension LeetArray {
    /// https://leetcode-cn.com/problems/brick-wall/description/
    func leastBricks(_ wall: [[Int]]) -> Int {
        var tempDic: [Int: Int] = [:]
        wall.forEach { (arr) in
            var sum = 0
            arr.enumerated().forEach({ (index, value) in
                if index < arr.count - 1 {
                    sum += value
                    if let count = tempDic[sum] {
                        tempDic[sum] = count + 1
                    } else {
                        tempDic[sum] = 1
                    }
                }
            })
        }
        
        var maxCount = 0
        tempDic.values.forEach { (cnt) in
            if maxCount < cnt {
                maxCount = cnt
            }
        }
        
        return wall.count - maxCount
    }
}

// MARK: - 757. 设置交集大小至少为2
extension LeetArray {
    
    ///
    /// https://leetcode-cn.com/problems/set-intersection-size-at-least-two/description/
    func intersectionSizeTwo(_ intervals: [[Int]]) -> Int {
        
        var hasUnusual = false
        
        // 1、根据尾节点排序
        let array = intervals.sorted { (arr1, arr2) -> Bool in
            if let last1 = arr1.last, let last2 = arr2.last, arr1.count > 1, arr2.count > 1 {
                if last1 < last2 {
                    return true
                }
            } else {
                hasUnusual = true
            }
            return false
        }
        
        if hasUnusual {
            return Int.min
        }
        
        // 2、遍历排序后的数组
        var count: Int = 0
        var value1: Int = -1
        var value2: Int = -1
        
        array.forEach { (arr) in
            if arr[0] > value2 {
                count += 2
                value2 = arr[1]
                value1 = value2 - 1
            } else if arr[0] > value1 {
                count += 1
                value1 = value2
                value2 = arr[1]
            }
        }
        
        return count
    }
}

// MARK: - 815. 公交路线
extension LeetArray {
    
    /// https://leetcode-cn.com/problems/bus-routes/description/
    func numBusesToDestination(_ routes: [[Int]], _ S: Int, _ T: Int) -> Int {
        if S == T {
            return 0
        }
        
        var dic: [Int: [[Int]]] = [:]
        
        for route in routes {
            for dot in route {
                if let arr = dic[dot] {
                    var tempArray = arr
                    tempArray.append(route)
                    dic[dot] = tempArray
                } else {
                    let tempArray = [route]
                    dic[dot] = tempArray
                }
            }
        }
        
        guard var currRoutes = dic[S] else {        // 当前要遍历的线路
            return -1
        }
        
        var nextRoutes: [[Int]] = []                // 下一次要遍历的线路
        var visitedRoutes: [[Int]] = currRoutes     // 已经便利过的线路
        var count: Int = 1
        while currRoutes.count > 0 {                // 对应nextRoutes
            while currRoutes.count > 0 {            // currRoutes.popLast()
                if let tempArray = currRoutes.popLast() {
                    for site in tempArray {
                        if site == T {
                            return count
                        } else {
                            for route in dic[site]! {
                                if !visitedRoutes.contains(route) {
                                    visitedRoutes.append(route)
                                    nextRoutes.append(route)
                                }
                            }
                        }
                    }
                }
            }
            
            count += 1
            let tempRoutes = currRoutes
            currRoutes = nextRoutes
            nextRoutes = tempRoutes
        }
        
        return -1
    }
}

