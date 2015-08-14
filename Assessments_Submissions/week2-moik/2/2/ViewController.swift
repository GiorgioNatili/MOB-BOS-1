//
//  ViewController.swift
//  2
//
//  Created by Yofred Moik on 8/14/15.
//
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    
    
    @IBAction func tapButton(sender: AnyObject) {
        textField.text = "Hello world"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

