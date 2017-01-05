//: [Previous](@previous)

import Foundation

let dictionary = [
    "A" : "aaaaaa",
    "Z" : "zzzzzzz",
    "D" : "ddddddd"
]

//let sortedKeys = Array(dictionary.keys).sorted(<) // ["A", "D", "Z"]

let arr = Array(dictionary.keys)

let sortedArr = arr.sorted()

var dictSorted:Dictionary

for key in sortedArr {
    let value = dictionary[key]
    dictSorted[key] = value
}

print(dictSorted)


//var str = "Hello, playground"
//
//let dicGradeData:[Int:Array] = [1:["三班","四班","一班","二班"],6:["一班","二班","三班"],5:["一班","三班","二班"],2:["四班","一班","二班","三班"],3:["一班","二班","三班","四班"],4:["一班","三班","四班","二班"]]
//
//NSLog("排序前：%@",dicGradeData)
//
////按照键降序排序
//var arrTemp = dicGradeData.sorted(by: { ((t1), (t2)) -> Bool in
//    return t1.0 > t2.0 ? true:false
//})
//
//print("按照键降序排序:")
//for (key,value) in arrTemp{
//    print(key,value)
//}

//按照键升序排序
//arrTemp = dicGradeData.sort({ (t1, t2) -> Bool in
//    return t1.0 < t2.0 ? true:false
//})
//print("按照键升序排序:")
//for (k,v) in arrTemp{
//    print(k,v)
//}
//
//var arrDicData:[[String:NSObject]] = [[String:NSObject]]()
//for i in 0..<10 {
//    arrDicData.append([
//        "ID": i,
//        "Age": 18 + (Int)(arc4random() % 100),
//        "Name":"test\(i + 1)",
//        "Sex":i % 2 == 0 ? "Man":"Woman",
//        "AddDatetime":(Int)(NSDate().timeIntervalSince1970)
//        ])
//}
//NSLog("按照字典值排序前：%@",arrDicData)
//
//let ageDesc:[[String:NSObject]] = arrDicData.sort { (t1, t2) -> Bool in
//    return (t1["Age"] as! Int) > (t2["Age"] as! Int) ? true:false
//}
//NSLog("按照年龄值降序排序后：%@",ageDesc)
