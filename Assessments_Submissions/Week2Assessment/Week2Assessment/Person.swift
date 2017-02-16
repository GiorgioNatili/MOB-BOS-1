//
//  Person.swift
//  Week2
//
//  Created by Luke Payyapilli on 8/16/15.
//  Copyright (c) 2015 Luke Payyapilli. All rights reserved.
//

import Foundation

class Person: NSObject {
    var name : String
    var age : Int?

    init (name:String, age:Int?) {
        self.name = name
        self.age = age
    }
    
    func getAge(age:Int) -> String {
        
        if self.age >= 21 {
        
            return "You can drink!!"
        
        } else if self.age < 21 && self.age >= 18 {
        
            return "You can vote!!"
        
        } else if self.age >= 16 && self.age < 18  {
        
            return "You can drive!!"
        
        } else {
            return "NO SOUP FOR YOU!!!!"
        }
    }
   
}
