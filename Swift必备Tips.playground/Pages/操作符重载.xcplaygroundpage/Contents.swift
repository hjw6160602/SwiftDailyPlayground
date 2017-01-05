//  Swift必备Tips Playground - a place where people can play
//  操作符重载
//
//  Created by 贺嘉炜 on 2016/12/06.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//

import Foundation

struct Vector2D{
    var x = 0.0
    var y = 0.0
}

let v1 = Vector2D(x: 2.0, y: 3.0)
let v2 = Vector2D(x: 1.0, y: 4.0)

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

let v3 = v1 + v2
/*
 precedencegroup 定义了一个操作符优先级别。操作符优先级的定义和类型声明有些相似，一个操作符必须要属于某个特定
 的优先级。Swift标准库已经定义了一些常用的运算优先级组，比如假发优先级和乘法优先级等，你可以在这里：
 (github.com/apple/swift-evolution/blob/master/proposals/0077-operator-precedence.md)
 找到完整的列表。如果没有适合你运算符的优先级组，你就需要像我们在例子中做的这样，自己指定结合律方式和优先级顺序了。
 */
precedencegroup DotProductPrecedence {
    /* associativity 定义了结合律，即如果多个同类的操作符顺序出现的计算顺序。比如常见的加法和减法都 是left，就是说多个加法同时出现时按照从左往右的顺序计算 (因为加法满足交换律，所以这个顺序无所谓，但是减法的话计算顺序就很重要了)。点乘的结果是一个Double，不再会和其他点乘结合使用，所以这里是none;*/
    associativity: none
    /* higherThan运算的优先级，点积运算是优先于乘法运算的。除了 higherThan，也支持使用 lowerThan 来指定优先级低于某个其他组。*/
    higherThan: MultiplicationPrecedence
}

infix operator +*: DotProductPrecedence

func +* (left: Vector2D, right: Vector2D) -> Double {
    return left.x * right.x + left.y * right.y
}

let result = v1 +* v2

