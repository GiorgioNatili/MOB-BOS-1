//
//  AddItemViewController.swift
//  week5-lin
//
//  Created by Bo-Huei Lin on 9/9/15.
//  Copyright (c) 2015 Bo-Huei Lin. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var userAddItem: UITextField!
    
    var tableData:ItemListTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userAddItem.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if count(userAddItem.text) < 1 {
            
            userAddItem.text = "Please enter a longer name!"
            //todo.placeholder = "Add more than three chars"
        }
        return true
    }
    
    
    @IBAction func cancelSubmit(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    //Submit Button
    @IBAction func addItem(sender: AnyObject) {
        
        tableData.addNewItem(userAddItem.text)
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    // MARK: user interaction
    
    // UITextFieldDeletgate
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        println(textField.text)
        
        // return true
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) ->
        
        Bool {
            println(textField.text)
            
            return true
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
