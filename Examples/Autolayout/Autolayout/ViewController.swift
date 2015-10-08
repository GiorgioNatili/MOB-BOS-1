//
//  ViewController.swift
//  Autolayout
//
//  Created by William Martin on 4/24/15.
//  Copyright (c) 2015 Anomalus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var grayRect: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hello World")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func willAnimateRotationToInterfaceOrientation(
        toInterfaceOrientation: UIInterfaceOrientation,
        duration: NSTimeInterval
        )
    {
        if toInterfaceOrientation == UIInterfaceOrientation.Portrait {
            println("Portrait!")
        } else if toInterfaceOrientation == UIInterfaceOrientation.LandscapeLeft {
            println("Landscape left!")
        } else if toInterfaceOrientation == UIInterfaceOrientation.LandscapeRight {
            println("Landscape right!")
        } else if toInterfaceOrientation == UIInterfaceOrientation.PortraitUpsideDown {
            println("Portrait upside down!")
        }
    }
}

