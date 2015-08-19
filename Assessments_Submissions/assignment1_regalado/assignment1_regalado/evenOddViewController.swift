//
//  evenOddViewController.swift
//  assignment1_regalado
//
//  Created by Marcy Regalado on 8/16/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class evenOddViewController: UIViewController {

    @IBOutlet weak var numInput: UITextField!
    @IBOutlet weak var numOutput: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    @IBAction func checkNum(sender: AnyObject) {
        let number = numInput.text
        let numInt = Int(number!)
        
        //private let number = 0
        
        
        if numInt! % 2 == 0 {
            numOutput.text = "This number is even!"
        } else {
            numOutput.text = "This number is odd."
        }
    }

}
