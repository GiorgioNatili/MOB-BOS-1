//
//  ViewController.swift
//  week2-shamis
//
//  Created by Dmitry Shamis on 8/16/15.
//  Copyright (c) 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var helloWorldLabel: UILabel!

    @IBOutlet weak var nameField: UITextField!

    @IBOutlet weak var ageField: UITextField!

    @IBOutlet weak var ageMessageField: UILabel!

    @IBAction func helloWorld(sender: UIButton) {
        let name = nameField.text
        let age = ageField.text

        if !name.isEmpty && age.isEmpty {
            helloWorldLabel.text = "Hello \(name)"
        } else if !name.isEmpty && !age.isEmpty {
            helloWorldLabel.text = "Hello \(name), you are \(age) years old!"
            
            let ageInt = age.toInt()
            
            if ageInt >= 21 {
                ageMessageField.text = "You can drink."
            } else if ageInt >= 18 {
                ageMessageField.text = "You can vote."
            } else if ageInt >= 16 {
                ageMessageField.text = "You can drive."
            } else {
                self.ageMessageField.text = "Keep growing Junior..."
            }
        } else {
            helloWorldLabel.text = "Hello World!"
        }
    }

}

