//
//  EvenNumberViewController.swift
//  week2-shamis
//
//  Created by Dmitry Shamis on 8/16/15.
//  Copyright (c) 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class EvenNumberViewController: UIViewController {

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

    @IBOutlet weak var evenAnswerLabel: UILabel!
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBAction func evenNumberButton(sender: AnyObject) {
        let num = (numberInput.text.toInt() != nil) ? numberInput.text.toInt() : 0
        
        if num! % 2 == 0 {
            evenAnswerLabel.text = "Even"
        } else {
            evenAnswerLabel.text = "Odd"
        }
    }
    
}
