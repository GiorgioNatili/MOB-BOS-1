//
//  ViewController.swift
//  Week2_Hartwig
//
//  Created by Matthew Hartwig on 8/16/15.
//  Copyright (c) 2015 Matthew Hartwig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var AgeField: UITextField!
    @IBOutlet weak var HelloNameAge: UILabel!
    @IBOutlet weak var ResponsibilityLabel: UILabel!
    @IBOutlet weak var SumField: UILabel!
    @IBOutlet weak var AddField: UITextField!
    @IBOutlet weak var EvenEntry: UITextField!
    @IBOutlet weak var EvenOutputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func responsibilities(sender: AnyObject) {
        if AgeField != nil {
            if self.AgeField.text.toInt() >= 21 {
                ResponsibilityLabel.text = "You can drink."
                println(ResponsibilityLabel)
            } else if self.AgeField.text.toInt() >= 18 {
                ResponsibilityLabel.text = "You can vote."
                println(ResponsibilityLabel)
            } else if self.AgeField.text.toInt() >= 16 {
                ResponsibilityLabel.text = "You can drive."
                println(ResponsibilityLabel)
            } else if AgeField.text.toInt() < 16 {
                ResponsibilityLabel.text = "Find some hobbies!"
                println(ResponsibilityLabel)
            }
        }
    }
    
    @IBAction func giveAHello(sender: AnyObject) {
        if NameField != nil {
            HelloNameAge.text = "Hello \(NameField.text), your age is \(AgeField.text) years old!"
            println(HelloNameAge)
        }
    }
    @IBAction func addNewNumber(sender: AnyObject) {
        var addNumber = (AddField.text.toInt() != nil) ? AddField.text.toInt() : 0
        var counter = SumField.text!.toInt() ?? 0
        SumField.text = String(addNumber! + counter)
       
    }

    @IBAction func isEven(sender: AnyObject) {
        if EvenEntry != nil {
            if EvenEntry.text!.toInt()! % 2 == 0 {
                EvenOutputLabel.text = "Your Number is Even!"
            } else {
                EvenOutputLabel.text = "Your Number is Odd"
            }
        }
    }
}

