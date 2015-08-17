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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func giveAHello(sender: AnyObject) {
        if NameField != nil {
            HelloNameAge.text = "Hello \(NameField.text), your age is \(AgeField.text) years old!"
            println(HelloNameAge)
        }
    }

}

