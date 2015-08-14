//
//  Sum.swift
//  2
//
//  Created by Yofred Moik on 8/14/15.
//
//

import Foundation

class Total {
    var sum : Int
    
    init (sum:Int) {
        self.sum = sum
    }
    
    func addNum (lastNum:Int) -> Int {
        var newSum : Int
        newSum = sum + lastNum
        
        return newSum
    }
}