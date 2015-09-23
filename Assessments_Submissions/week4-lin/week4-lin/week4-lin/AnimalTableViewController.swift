//
//  AnimalTableViewController.swift
//  week4-lin
//
//  Created by Bo-Huei Lin on 8/31/15.
//  Copyright (c) 2015 Bo-Huei Lin. All rights reserved.
//

import UIKit
import CoreData

class AnimalTableViewController: UITableViewController {
    
    let textCellIdentifier = "TextCell"
    
    var zooKeeper = ["Big Tiger!", "Bad Bear", "America Eagle~"]
    // var zooKeeper = [NSManagedObject]()
    
    
    @IBAction func addAnimal(sender: AnyObject) {
        
        //Create the AlertController
        let animalSheetController: UIAlertController = UIAlertController(title: "Zoo Keeper!!", message: "Enter your animal to the list :)", preferredStyle: .Alert)
        
        //Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
            //Do some stuff
        }
        
        animalSheetController.addAction(cancelAction)
        
        //Create and an option action
        let addAction: UIAlertAction = UIAlertAction(title: "Add", style: .Default) { action -> Void in
            //Do some other stuff
            if let textField = animalSheetController.textFields?.first as? UITextField {
                let animal = textField.text
                if !animal.isEmpty {
                    
                    self.zooKeeper.append(textField.text)
                }
                
                
                println(textField.dynamicType)
            }
  
//            let textField = animalSheetController.textFields?.first as? UITextField
//            let animal = textField ??
            
            //

            //let animal = textField!.text ??  : "some animal"
            //
            
            self.tableView.reloadData()
            
        }
        
        
        animalSheetController.addAction(addAction)

        
        animalSheetController.addTextFieldWithConfigurationHandler { textField -> Void in
            //TextField configuration
            textField.textColor = UIColor.blueColor()
        }
        
        //Present the AlertController
        self.presentViewController(animalSheetController, animated: true, completion: nil)
        
        
    }
    
    
    // Table View Controller
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Refresh
        
        refreshControl?.endRefreshing()
        
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
        return zooKeeper.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! UITableViewCell

        let row = indexPath.row
        cell.textLabel?.text = zooKeeper[row]
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
