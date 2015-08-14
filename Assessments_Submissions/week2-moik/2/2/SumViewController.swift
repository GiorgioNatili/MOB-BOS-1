//
//  SumViewController.swift
//  2
//
//  Created by Yofred Moik on 8/14/15.
//
//

import UIKit

class SumViewController: UIViewController {

    @IBOutlet weak var sumTextLabel: UILabel!
    @IBOutlet weak var numTextField: UITextField!
    
    @IBAction func addNumButton(sender: AnyObject) {
        var lastSum = sumTextLabel.text?.toInt()!
        var newNum = numTextField.text.toInt()!
        var myNum = Total(sum: lastSum!)
        
        sumTextLabel.text = String(myNum.addNum(newNum))
    }
    
    
    
    
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

}
