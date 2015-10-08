//
//  SumExercise.swift
//  Week2_Hartwig
//
//  Created by Matthew Hartwig on 8/16/15.
//  Copyright (c) 2015 Matthew Hartwig. All rights reserved.
//

import Foundation

class SumTotal {
    var Sum : Int
    
    init (Sum:Int) {
        self.Sum = Sum
    }
    
    func addNew(holdNumber:Int) -> Int {
        var sumNew = 0
        sumNew = Sum + holdNumber
        return sumNew
    }
}
