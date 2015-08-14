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

        var age = ageField.text.toInt()!
        var newPerson = Person(name: nameField.text, age: age)
        
        textField.text = "Results: \(newPerson.checkAge(age))"
        textField.text = "Hello \(newPerson.name) you are \(newPerson.age) years old!"
        
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

