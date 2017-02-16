//
//  Sum.swift
//  Week2Assessment
//
//  Created by Luke Payyapilli on 8/17/15.
//  Copyright (c) 2015 Luke Payyapilli. All rights reserved.
//

import Foundation

class Sum: NSObject {
    var sum : Int
        init (sum:Int) {
            self.sum = sum
        }
    
    func addTot (lastNum:Int) -> Int {
        var newSum : Int
        newSum = sum + lastNum
        
        return newSum
    }

}
