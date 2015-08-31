//
//  ViewController.swift
//  AnimalFarm
//
//  Created by Marcy Regalado on 8/29/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: UI element variables
    @IBOutlet weak var animalName: UITextField!
    @IBOutlet var animalList: UITableView!
    
    // MARK: Overriding Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //This title sets the title for the view controller
        title = "animal farm"
        
        //Code from WeLoveSwift
        // NSUserDefaults gives a shared instance through the standardUserDefaults class method
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // valueForKey is used to retreive values
        if let soundOn = userDefaults.valueForKey("sound_on") as? Bool {
            if soundOn {
                print("true")
            } else {
                print("false")
            }
        }
        
        // setValue:forKey: to set values
        userDefaults.setValue(nil, forKey: "sound_on")
        
        
    }
    
//    let userDefaults = NSUserDefaults.standardUserDefaults()
//    
//    // valueForKey is used to retreive values
//    if let soundOn = userDefaults.valueForKey("sound_on") as? Bool {
//        if soundOn {
//            print("true")
//        } else {
//            print("false")
//        }
//    }
//    
//    // setValue:forKey: to set values
//    userDefaults.setValue(nil, forKey: "sound_on")

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Adding Animal Function
   
}

