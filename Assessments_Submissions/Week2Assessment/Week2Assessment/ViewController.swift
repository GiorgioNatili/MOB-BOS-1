//
//  ViewController.swift
//  Week2
//
//  Created by Luke Payyapilli on 8/16/15.
//  Copyright (c) 2015 Luke Payyapilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var answerField: UITextField!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func startFunc(sender: AnyObject) {
        var age = ageField.text.toInt()!
        var newPerson = Person(name:nameField.text, age: age)
        textField.text = "\(newPerson.getAge(age))"
        answerField.text = "Hello \(newPerson.name) you are \(newPerson.age!) years old!!"
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

