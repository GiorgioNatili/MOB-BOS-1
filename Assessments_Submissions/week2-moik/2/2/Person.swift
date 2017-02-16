//
//  Person.swift
//  2
//
//  Created by Yofred Moik on 8/14/15.
//
//

import Foundation

class Person {

    private var name : String
    private var age : Int?
    
    init (name:String, age:Int?) {
        self.name = name
        self.age = age
    }
    
    var realName: String {
        get {
            return name
        }
        
        set {
            name = newValue
        }
    }
    
    var realAge: Int? {
        get {
            return age
        }
        
        set {
            age = newValue
        }
    }

    
    func checkAge(age:Int) -> String {
        
        if self.age >= 21 {
            return "You can drink"
        } else if self.age < 21 && self.age >= 18 {
            return "You can vote"
        } else if self.age >= 16 && self.age < 18  {
            return "You can drive"
        } else {
            return "You cant do anything"
        }
    }

}