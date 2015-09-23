//
//  CellDetailsViewController.swift
//  week5-lin
//
//  Created by Bo-Huei Lin on 9/9/15.
//  Copyright (c) 2015 Bo-Huei Lin. All rights reserved.
//

import UIKit

class CellDetailsViewController: UIViewController {

    
    // Mark: private properties
    private var item:String!

    
    override func viewDidLoad() {
        super.viewDidLoad()

           // ItemTitle.text = item
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    var ItemList:String
        {
        set {
            
            item = newValue
        }
        get {
            
            return item
            
        }
        
    }
    
}
