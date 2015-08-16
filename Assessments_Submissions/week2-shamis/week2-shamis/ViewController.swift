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

    @IBAction func helloWorld(sender: UIButton) {
        helloWorldLabel.text = "Hello World!"
    }

}

