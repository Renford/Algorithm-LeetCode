//
//  NSObject+Addtions.swift
//  Algorithm-LeetCode
//
//  Created by RenChao on 2019/2/21.
//  Copyright © 2019 Renford. All rights reserved.
//

import Foundation

extension NSObject {
    func getAllMethodNames() -> [String] {
        var result: [String] = []

        var outCount: UInt32 = 0
        let methods = class_copyMethodList(self.classForCoder, &outCount)!
        for i in 0 ..< outCount {
            let method = property_getName(methods[Int(i)])
            if let name = String(utf8String: method) {
                result.append(name)
            }
        }

        print("===\(self.classForCoder)===all methods:\(result)")

        return result
    }
}
