//
//  AddReceipt.swift
//  Tip.Do
//
//  Created by Marcy Regalado on 9/14/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit
import Foundation

class AddReceipt: UIViewController {
    
    // MARK: Private variables, arrays, variables
    
    // Question do I need to have a multidimensional array here?

//    var itemOwner: [String] = []
//    var item: [String] = []
//    var itemPrice: [String] = []
//    
//    private var sections: [String] = [itemOwner,item,itemPrice]

    
    // private var itemOwner: [String] = ["Marcy"]

//    private var itemName: String = "cake"
//    private var itemPrice: Double = 12.12
//    
//    private var item: [String:Double] = [
//        "cake" : 12.12
//    ]
    
    //private var item: [String] = ["cake"]
    //private var itemPrice: [String] = ["12.12"] //need a function to convert the string to a double
    
    class Item {
        private var itemName:[String] = ["cake"]
        private var itemPrice:[Double] = [12.12]
    }
    
    private var item = Item() {
        itemName = Item.itemName
        itemPrice = Item.itemPrice
    }
    
    
    //private var splitCalculater: SplitCalculator = SplitCalculator()
    
    // MARK: UI Elements
    @IBOutlet var taxAmt: UITextField!
    @IBOutlet var tipAmt: UILabel!
    @IBOutlet var totalAmt: UILabel!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Add Receipt Items"
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "itemCell")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tipChange(sender: UISegmentedControl) {
        
            
    }
    
    @IBAction func partyChange(sender: UIStepper) {
        
        //splitCalculater.finalAmount = (totalAmt.text as! NSString).doubleValue
        
    }
    
    // MARK: user interaction (item input)
    
    @IBAction func addItem(sender: AnyObject) {
    
        var itemName: UITextField!
        var itemCost: UITextField!
        //var itemWho: UITextField!
        
        let addItem = UIAlertController(title: "Add an item", message: "Enter the item name, item price, and name of who ordered", preferredStyle: .Alert)
        
        //Create a cancel option
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
            
        }
        addItem.addAction(cancelAction)
        
        
        //Create another option action
        let addAction: UIAlertAction = UIAlertAction(title: "Add", style: .Default) { action -> Void in
            self.item.append(itemName!.text!)
            self.item.append(itemCost!.text!)
            //self.itemOwner.append(itemWho!.text!)
            //inserting new item (with all three labels/arrays)
            let updatedIndexPath = NSIndexPath(forRow: self.item.count - 1, inSection: 0)
            self.tableView.insertRowsAtIndexPaths([updatedIndexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
        addItem.addAction(addAction)
        
        //Add a text field
        addItem.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            itemName = textField
            textField.placeholder = "Item Name"
        })
        addItem.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            itemCost = textField
            textField.placeholder = "Item Price"
        })
        addItem.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            itemWho = textField
            textField.placeholder = "Ordered by?"
        })
    
        
        //Presenting TableViewController
        self.presentViewController(addItem, animated: true, completion: nil)

        
    }

    
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return item.count
        
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("itemCell", forIndexPath: indexPath!) as! ReceiptItem
        
        cell.item?.text = item[indexPath!.row]
        cell.itemPrice?.text = itemPrice[(indexPath?.row)!]
        cell.person?.text = itemOwner[(indexPath?.row)!]
        
        return cell
        
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
