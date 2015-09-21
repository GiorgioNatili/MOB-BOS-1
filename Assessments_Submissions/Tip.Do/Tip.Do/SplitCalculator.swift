////
////  SplitCalculator.swift
////  Tip.Do
////
////  Created by Marcy Regalado on 9/14/15.
////  Copyright © 2015 Marcy Regalado. All rights reserved.
////
//
//import UIKit
//
//protocol BillSplit {
//    //good to have the protocol if we need to test this code :) You can just implement the protocol and create fake data
//    //With fake data you can use fake libraries and really test the code
//    var finalAmount: Double { get set }
//    func calculateAmount(receiptItem: Item) -> Double
//}
//
//
//class SplitCalculator: NSObject, BillSplit {
//    
//    private var _finalAmount: Double? = 0.0
//    
//    func calculateSplitAmount(receiptItem: Item) -> Double {
//        
//        var splitAmount = 0.0
//
//        if let tot = _finalAmount {
//
//            splitAmount = (tot + (tot * receiptItem.tip!)) / Double(receiptItem.people!)
//        }
//        
//        return splitAmount
//    }
//    
//    var finalAmount:Double {
//        
//        set {
//            _finalAmount = newValue
//        }
//        
//        get {
//            return _finalAmount!
//        }
//        
//    }
//
//}
