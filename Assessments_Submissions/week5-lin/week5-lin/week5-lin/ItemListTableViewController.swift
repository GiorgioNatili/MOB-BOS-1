//
//  ItemListTableViewController.swift
//  week5-lin
//
//  Created by Bo-Huei Lin on 9/9/15.
//  Copyright (c) 2015 Bo-Huei Lin. All rights reserved.
//

import UIKit
import Foundation

// Import UIKit

import CoreData


class ItemListTableViewController: UITableViewController {

    var itemsDic = [String:String]()
    
    var foodItems = [NSManagedObject]()
    
    var items = ["Donkin Donuts Coffee", "Starbucks", "Pizza", "Hamberger", "HotDog", "Lobster Roll", "Donuts", "CocaCola", "Pepsi"]
    
    var itemImage = ["dunkincoffee", "starbucks", "pizza", "hamburger", "hotdog", "lobsterroll", "donut", "CocaCola", "pepsi"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: accessing to local data
    
    func addNewItem(item: String) {
        
        if (count(item) > 3) {
            
            items.append(item)
            self.tableView.reloadData()
            
        }
            
        else {
            println("Invalid entry!")
        }
    }
    
    
    //
    // MARK: passing data around
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let itemViewController = segue.destinationViewController as? AddItemViewController {
            
            itemViewController.tableData = self
            
        }
        
        if let details = segue.destinationViewController as? CellDetailsViewController {
            
            let indexPath = self.tableView.indexPathForSelectedRow()!
            let titleString = self.items[indexPath.row]
            
            details.ItemList = titleString
            
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
            
        }
        
    }
//
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        //return items.count
        
        return foodItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ItemCell", forIndexPath: indexPath) as! ItemListCell

        // Core Data
        let foodItem = foodItems[indexPath.row]
        
        cell.textLabel!.text =  foodItem.valueForKey("name") as? String
        // Core Data
        
        // Configure the cell...
        cell.cellLabel?.text = items[indexPath.row]
        
        var randomIndex = Int(UInt32(rand()) % UInt32(itemImage.count))
        
        // var randomIndex = Int(arc4random_uniform(UInt32(itemImage.count)))
        
        var image : UIImage! = UIImage(named: itemImage[randomIndex])
        //cell.imageView!.image = image
        
        cell.cellImage!.image = image

        
        return cell
    }
    

    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            //Gesture Systel to Delete
            items.removeAtIndex(indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
