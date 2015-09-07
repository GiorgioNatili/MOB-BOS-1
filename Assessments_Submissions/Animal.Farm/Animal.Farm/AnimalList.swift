//
//  AnimalList.swift
//  Animal.Farm
//
//  Created by Marcy Regalado on 9/6/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class AnimalList: UITableViewController {
    
    private var animalList = ["Pengin","Dolphin","Giraffe"]
    
    
    //Code structure from: http://swiftoverload.com/uialertcontroller-swift-example/
    
    @IBAction func addAnimal(sender: AnyObject) {
        let animalInput: UITextField!
        let addAnimalName = UIAlertController(title: "Add New Animal", message: "Enter an animal name :)", preferredStyle: .Alert)
        
        //Create a cancel option
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
            
        }
        addAnimalName.addAction(cancelAction)
        
        
        //Create another option action
        let addAction: UIAlertAction = UIAlertAction(title: "Add", style: .Default) { action -> Void in
            self.animalList.append(animalInput!.text!)
            var updateIndexPath = NSIndexPath(forRow: self.animalList.count, inSection: self.animalList.count)
            //inserting new animal
            //self.tableView.insertRowsAtIndexPaths([updateIndexPath], withRowAnimation: UITableViewRowAction.Automatic)
        }
        addAnimalName.addAction(addAction)
        addAnimalName.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            animalInput = textField
        })
        //Presenting TableViewController
        self.presentViewController(addAnimalName, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalList.count
    }
    
    // MARK: accessing local memory
    
    
    func newAnimal(item:String) {
        if !item.isEmpty {
            animalList.append(item)
            self.tableView.reloadData() //this also updates the current animal list
            navigationController?.popToRootViewControllerAnimated(true) //returns to the root view controller
        }
    }
   
    // MARK: - Navigation
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("animalNameCell", forIndexPath: indexPath) as! AnimalNameCell

        cell.animalName?.text = animalList[indexPath.row]
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            animalList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // MARK: user interaction
  
    
}
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


