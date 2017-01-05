//  Swift必备Tips Playground - a place where people can play
//  func-params
//
//  Created by 贺嘉炜 on 2016/11/30.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//
import Foundation

func increment(variable:inout Int){
    variable += 1
}

var luckynum = 4
let num = increment(variable: &luckynum)
print(luckynum)


func increment2(variable v:Int) -> Int{
    return v + 1
}

let luckynum2 = 7
let num2 = increment2(variable: luckynum2)








func incrementor (variable :var  Int) -> Int{
    variable += 1
    return variable
}
