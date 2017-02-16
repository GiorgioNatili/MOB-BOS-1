//
//  AddNumbersViewController.swift
//  week2-shamis
//
//  Created by Dmitry Shamis on 8/16/15.
//  Copyright (c) 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class AddNumbersViewController: UIViewController {

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
    let currentCount = 0
    
    @IBOutlet weak var addNumbersLabel: UILabel!
    
    @IBOutlet weak var addNumbersField: UITextField!
    
    @IBAction func addNumbersButton(sender: AnyObject) {
        let numberToAdd = (addNumbersField.text.toInt() != nil) ? addNumbersField.text.toInt() : 0
        let currentCount = addNumbersLabel.text!.toInt() ?? 0
        
        addNumbersLabel.text = "\(currentCount + numberToAdd!)"
        
       
    }

}
