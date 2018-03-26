//  Playground - noun: a place where people can play
//  Swift函数编程之Map、Filter、Reduce
//
//  Created by 贺嘉炜 on 2016/11/29.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//

import UIKit

/* map函数
 * 遍历集合类型并对其中的每一个元素进行同一种的操作。
 * 例如：我们要对一个数组里面的数据进行平方操作，常见的代码如下：
 */
let values: [Double] = [2.0,4.0,6.0,8.0]
//var squares: [Double] = []
//for value in values {
//    squares.append(value * value)
//}

//print(squares)
let squares: [Double] = values.map {
    $0 * $0
}

let scores = [0,28,124]
let words = scores.map{value in
    let num = NSNumber(value: value)
    print(num)
    NumberFormatter.localizedString(from: num, number: .spellOut)
}
print(words)


/* filter函数
 * 对集合类型进行遍历，并将其中的满足条件的元素作为结果数组中的元素进行返回。
 * 该函数里面只有一个作为条件判断的语句，闭包会遍历集合里面的元素并将满足条件的结果放在一起：
 */
let digits = [1,4,10,15]
let even = digits.filter { $0 % 2 == 0 }

print(even)

/** 数组去重 */
let array : [Int] = [1,1,2,2,3,3]
var hasItem : [Int] = []
let result = array.filter { (x: Int) -> Bool in
    var foundRepeat = false
    for item in hasItem {
        if x == item {
            foundRepeat = true
            return false
        }
    }
    hasItem.append(x)
    return true
}

print(result)

let array2 : [Int] = [1,1,2,2,3,3]
var set : Set<Int> = []
for item in array2 {
    set.insert(item)
}
print(set)



//let result = array.filter { (x: Int) -> Bool in
//
//}

print(result)


let items = [2.0,4.0,5.0,7.0]

/* reduce函数
 * 会将集合类型里面的所有元素组合成一个新值并返回
 * reduce 中的参数为两个：一个初始值、一个combine闭包
 * 例如下面的代码将数组中的元素相加并且其中的初始值为10：
 */
let total = items.reduce(10.0, +)

/* flatMap函数
 * 该函数会将那些多维集合类型转换为一维集合类型，实例如下：
 */
let collections = [[5,2,7],[4,8],[9,1,3]]
let flat = collections.flatMap { $0 }
print(flat)

