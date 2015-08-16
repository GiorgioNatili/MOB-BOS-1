//
//  SummationViewController.swift
//  assignment1_regalado
//
//  Created by Marcy Regalado on 8/17/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class SummationViewController: UIViewController {

    
    @IBOutlet weak var num: UITextField!
    @IBOutlet weak var cummalitiveSum: UILabel!
    
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
    
    
    //Everytime the add button is pressed there is a for loop that takes in the previous summed number and adds it's self to a new number
    
    //"Cummulative sum is \(qSum)"
    
    @IBAction func addButton(sender: AnyObject) {
        
        //let number = Int(num.text!)
        
        let number = num.text!
        let sum = cummalitiveSum
        
        let addNum = ((Int(number)) != nil) ? Int(number) : 0
        let counter = Int(sum.text!) ?? 0
        sum.text = String(addNum! + counter)

    
    }
}
