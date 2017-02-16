//
//  SumViewController.swift
//  Week2Assessment
//
//  Created by Luke Payyapilli on 8/17/15.
//  Copyright (c) 2015 Luke Payyapilli. All rights reserved.
//

import UIKit

class SumViewController: UIViewController {
    
   
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func addTot(sender: AnyObject) {
        var lastSum = numLabel.text?.toInt()!
        var newNum = inputField.text.toInt()!
        var num = Sum(sum: lastSum!)
        
        numLabel.text = String(num.addTot(newNum))

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}