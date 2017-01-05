//  Swift必备Tips Playground - a place where people can play
//  字面量
//
//  Created by 贺嘉炜 on 2016/12/06.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//
import Foundation

let aNumber = 3
let aString = "Hello"
let aBool = true

let anArray = [1,2,3]
let aDictionary = ["key1": "value1", "key2": "value2"]

typealias ALC = ExpressibleByArrayLiteral
typealias BLC = ExpressibleByBooleanLiteral
typealias DLC = ExpressibleByDictionaryLiteral
typealias FLC = ExpressibleByFloatLiteral
typealias NLC = ExpressibleByNilLiteral
typealias ILC = ExpressibleByIntegerLiteral
typealias SLC = ExpressibleByStringLiteral

enum MyBool: Int {
    case YES, NO
}


extension MyBool: ExpressibleByBooleanLiteral {
    init(booleanLiteral value: Bool) {
        self = value ? .YES : .NO
    }
}

let YES: MyBool = true
let NO: MyBool = false

YES.rawValue    // 0
NO.rawValue   // 1

let what = YES




//class Person {
//    let name: String
//    init(name value: String) {
//        self.name = value
//    }
//}

class Person: ExpressibleByStringLiteral {
    let name: String
    init(name value: String) {
        self.name = value
    }
    
    required convenience init(stringLiteral value: String) {
        self.init(name: value)
    }
    
    required convenience init(extendedGraphemeClusterLiteral value: String) {
        self.init(name: value)
    }
    
    required convenience init(unicodeScalarLiteral value: String) {
        self.init(name: value)
    }
}

let p: Person = "xiaoMing"
print(p.name)

