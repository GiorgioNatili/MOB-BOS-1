//
//  nameAgeViewController.swift
//  assignment1_regalado
//
//  Created by Marcy Regalado on 8/16/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class nameAgeViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText:  UITextField!
    @IBOutlet weak var nameAgeOutput: UILabel!
    @IBOutlet weak var agePrivilege: UILabel!
    
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

    
    @IBAction func submitNameAge(sender: AnyObject) {
        
        let name = nameText.text
        let age = ageText.text
        
        if !name!.isEmpty && !age!.isEmpty {
            nameAgeOutput.text = "Hello \(name!), you are \(age!) years old!"

            //converts age string into int
            let ageInt = Int(age!)
            
            if ageInt >= 21 {
                agePrivilege.text = "You can drink."
            } else if ageInt >= 18 {
                agePrivilege.text = "You can vote."
            } else if ageInt >= 16 {
               agePrivilege.text = "You can drive."
            } else if ageInt < 16 {
                agePrivilege.text = ""
            }
        } else {
            nameAgeOutput.text = "hello world!"
            agePrivilege.text = ""
        }
    }
}
