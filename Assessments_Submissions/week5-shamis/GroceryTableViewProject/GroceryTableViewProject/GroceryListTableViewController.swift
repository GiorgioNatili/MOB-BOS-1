//
//  GroceryListTableViewController.swift
//  GroceryTableViewProject
//
//  Created by Dmitry Shamis on 9/9/15.
//  Copyright (c) 2015 Dmitry Shamis. All rights reserved.
//

import UIKit
import CoreData

class GroceryListTableViewController: UITableViewController {
    
    private var groceries = [NSManagedObject]()
    
    private var groceriesImages = [
        "burger",
        "sandwich",
        "hotdog"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Groceries"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return groceries.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("groceryItem", forIndexPath: indexPath) as! UITableViewCell

        var item = groceries[indexPath.row]
        cell.textLabel?.text = item.valueForKey("name") as? String
        var image : UIImage = UIImage(named: groceriesImages[0])!
        cell.imageView!.image = image
        
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
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            let managedContext = appDelegate.managedObjectContext!
            managedContext.deleteObject(groceries[indexPath.row] as NSManagedObject)
            groceries.removeAtIndex(indexPath.row)
            managedContext.save(nil)
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

    @IBAction func addGroceryItem(sender: AnyObject) {
        var alert = UIAlertController(title: "What do you need at the Grocery Store?",
            message: "Add an item.",
            preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save",
            style: .Default) { (action: UIAlertAction!) -> Void in
                
                let textField = alert.textFields![0] as! UITextField
                self.saveName(textField.text)
                self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .Default) { (action: UIAlertAction!) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
            animated: true,
            completion: nil)
    }
    
    func saveName(name: String) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        
        let entity =  NSEntityDescription.entityForName("Item",
            inManagedObjectContext:
            managedContext)
        
        let item = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext:managedContext)
        
        item.setValue(name, forKey: "name")
        
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
        
        groceries.append(item)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        var error: NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest,
            error: &error) as? [NSManagedObject]
        
        if let results = fetchedResults {
            groceries = results
        } else {
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }

}
