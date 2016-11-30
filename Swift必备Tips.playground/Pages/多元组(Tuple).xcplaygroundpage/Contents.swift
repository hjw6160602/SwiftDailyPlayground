//  Swift必备Tips Playground - a place where people can play
//  多元组(Tuple)
//
//  Created by 贺嘉炜 on 2016/11/30.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//

import UIKit

//先定义一个实现了 IteratorProtocol 协议的类型
//IteratorProtocol 需要制定一个typealias Element
// 以提供一个返回Element？的方法next()
class ReverseIterator<T>: IteratorProtocol{
    typealias Element = T
    
    let array:[Element]
    var currentIndex = 0
    
    init(array:[Element]) {
        self.array = array
        currentIndex = array.count-1
    }
    func next() -> Element? {
        if currentIndex < 0 {
            return nil
        } else {
            let element = array[currentIndex]
            currentIndex -= 1
            return element
        }
    }
}

//然后我们来定义Sequence
//和 IteratorProtocol很类似，不过换成指定一个 typealias Iterator
//以及提供一个返回Iterator? 的方法makeIterator()
struct ReverseSequence<T>: Sequence {
    var array: [T]
    init (array: [T]) {
        self.array = array
    }
    typealias Iterator = ReverseIterator<T>
    
    func makeIterator() -> ReverseIterator<T> {
        return ReverseIterator(array: self.array)
    }
}

let arr = [0,1,2,3,4]
//对 Sequence 可以使用 for...in 来循环访问
for i in ReverseSequence(array: arr) {
    print("Index \(i) is \(arr[i])")
}

