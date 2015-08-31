//
//  animalFarm.swift
//  AnimalFarm
//
//  Created by Marcy Regalado on 8/30/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class animalFarm {
    
    var aniMal: [String]
    
    init() {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        if let animalInfo = userDefaults.valueForKey("aniMal") as? [String] {
            aniMal = animalInfo
        } else {
            // add default data
            aniMal = [
                "Pengin",
                "Dolphin",
                "Giraffe"
            ]
        }
    }
    
    //Accessor Method to return array
    
    //"setter"
    func newAnimal() {
        
        //1. get the current animals in the array
        //2. adding all the new animal
        //3. passing the new array to the ViewController
        
        var animalList: [String] {
            let list: [String] = []
            for animalName in aniMal {
               aniMal.append(animalName)
            }
        
            return list
        }        
    }

    func getAnimal() {
        //capture the array
        
    }
    

}
