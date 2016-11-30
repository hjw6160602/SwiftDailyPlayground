//  Swift必备Tips Playground - a place where people can play
//  @escaping
//
//  Created by 贺嘉炜 on 2016/11/30.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func doWork(closure : ()->() ){
    closure()
}

func doWorkAsync(clossure : @escaping ()->()){
    DispatchQueue.main.async {
        clossure()
    }
}

class S {
    var foo = "foo"
    
    func method1() -> Void {
        doWork {
            print(foo)
        }
        foo = "bar"
    }
    
    func method2() -> Void{
        doWorkAsync {
            print(self.foo);
        }
        foo = "bar"
    }
    
}

S().method1()

S().method2()




