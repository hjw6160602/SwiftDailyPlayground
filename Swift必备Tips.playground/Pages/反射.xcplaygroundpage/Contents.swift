//  Swift必备Tips Playground - a place where people can play
//  反射
//
//  Created by 贺嘉炜 on 2017/01/05.
//  Copyright © 2017年 贺嘉炜. All rights reserved.
//
import Foundation

class Person:NSObject {
    var name: String = ""
    var age: Int = 0
    
    convenience init(name:String, age:Int) {
        self.init()
        self.name = name
        self.age = age
    }
}

let xiaoMing = Person(name: "XiaoMing", age: 16)
let r = Mirror(reflecting: xiaoMing) // r 是 MirrorType

print("xiaoMing 是 \(r.displayStyle!)")

print("属性个数:\(r.children.count)")

for child in r.children {
    print("属性名:\(child.label)，值:\(child.value)")
}

//for i in r.children.startIndex..<r.children.endIndex {
//    print("属性名:\(r.children[i].0!)，值:\(r.children[i].1)")
//}

// 输出：
// xiaoMing 是 Struct
// 属性个数:2
// 属性名:name，值:XiaoMing
// 属性名:age，值:16

dump(xiaoMing)
// 输出：
// ▿ Person
//  - name: XiaoMing
//  - age: 16

func valueFrom(_ object: Any, key: String) -> Any? {
    let mirror = Mirror(reflecting: object)
    
    for child in mirror.children {
        let (targetKey, targetMirror) = (child.label, child.value)
        if key == targetKey {
            return targetMirror
        }
    }
    
    return nil
}

// 接上面的 xiaoMing
if let name = valueFrom(xiaoMing, key: "name") as? String {
    print("通过 key 得到值: \(name)")
}

// 输出：
// 通过 key 得到值: XiaoMing



struct Point {
    var x = 0.0
    var y = 0.0
}

class PropertyHub {
    var simpleProp = "Foo"
    var structProp = Point()
    
    // computed property is not visible in reflect().
    var computedProp : Point {
        get {
            return Point(x: structProp.x + 100.0, y: structProp.y - 100.0)
        }
    }
}

// we have to create an instance before calling reflect().
var hub = PropertyHub()

let mirror = Mirror(reflecting:hub)
let count = mirror.children.count

for child in mirror.children {
    print("属性名:\(child.label)，值:\(child.value)")
}

//for index in 0..<count {
//    
//    let key = mirror.children[index].label
//    
//    // "super" refers to super class if any.
//    if key == "super" && index == 0 {
//        continue
//    }
//    
//    print("key: ")
//    print(key)
//}


