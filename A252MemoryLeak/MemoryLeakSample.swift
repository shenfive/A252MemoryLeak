//
//  MemoryLeakSample.swift
//  MemoryLeakDemo
//
//  Created by 申潤五 on 2024/9/16.
//

import Foundation

class MemoryLeakSample{
    var closure:(()->())?
    var counter = 1
    
    func setClosure(){
        closure = {
            [weak self] in
            self?.doSomeThing()
//            self.doSomeThing()
        }
        self.doSomeThing()
    }
    
    func startTimer(){
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            self?.doSomeThing()
            if self == nil{
                timer.invalidate()
            }
        }
    }
    
    func doSomeThing(){
        print("counter:\(counter)")
        counter += 1
    }
    
    
    deinit {
        print("MemoryLeakExample deinitialized. counter:\(counter)")
    }
}
