//
//  AgeOutput.swift
//  assignment1_regalado
//
//  Created by Marcy Regalado on 8/17/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit
import Foundation

class AgeOutput: NSObject {

    private var name: String
    private var age: String
    
    init (finalName: String, finalAge: String) {
       name = finalName
       age = finalAge
    }
    
    var currentName: String {
        get {
            return name
        }
        set {
            name = newValue
        }
    }
    
    var currentAge: String {
        get {
            return age
        }
        set {
            age = newValue
        }
    }
    
    
    func createOutput() -> String {
        
        if name == "" {
            return "hello world!"
        } else {
        return "Hello \(name), you are \(age)!"
        }
    }
    
    func ageMessageOutput() -> String {
        
        if age == "" {
            return ""
        } else {
        
        let ageInt = Int(age)
        var ageString: String = ""
        if ageInt >= 21 {
            ageString = "You can drink."
        } else if ageInt >= 18 {
            ageString = "You can vote."
        } else if ageInt >= 16 {
            ageString = "You can drive."
        } else if ageInt < 16 {
            ageString = ""
        }
        
        return ageString
    
        }
    }
}

