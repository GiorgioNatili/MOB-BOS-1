//
//  IsEvenViewController.swift
//  Week2Assessment
//
//  Created by Luke Payyapilli on 8/17/15.
//  Copyright (c) 2015 Luke Payyapilli. All rights reserved.
//

import UIKit

class IsEvenViewController: UIViewController {

    @IBOutlet weak var evenLabel: UILabel!
    @IBOutlet weak var inputText: UITextField!
    
    @IBAction func evenButton(sender: AnyObject) {
        if inputText.text.toInt()! % 2 == 0 {
           evenLabel.text = "This is an even number!"
        } else if inputText.text.toInt()! % 1 == 0 {
            evenLabel.text = "This is an odd number!"
        } else {
            evenLabel.text = "I'm not sure what this is!"
        }
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

