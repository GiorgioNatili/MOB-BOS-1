//
//  ViewController.swift
//  TestApp
//
//  Created by Matthew Hartwig on 8/30/15.
//  Copyright (c) 2015 Matthew Hartwig. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var animals = [NSManagedObject]()
    
    let textCellIdentifier = "TextIdentifier"
    
    @IBAction func didAddTap(sender: AnyObject) {
        var alert = UIAlertView(title: "New Animal", message: "Add a new animal!", delegate: self,
            cancelButtonTitle: "Cancel",
            otherButtonTitles: "Add")
        
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        
        alert.show()
        
        
    }
    
     func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            animals.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            // there is only one text field
            var textField = alertView.textFieldAtIndex(0)!
            
            // get the new races and capitalize the string
            var newRace = textField.text.capitalizedString
            
            // add the new race in the list
            self.saveType(newRace)
            
            // create the index path for the last cell
            var newIndexPath = NSIndexPath(forRow: animals.count - 1, inSection: 0)
            
            // insert the new cell in the table view and show an animation
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func saveType(name: String) {
        //1
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let entity =  NSEntityDescription.entityForName("Animal",
            inManagedObjectContext:
            managedContext)
        
        let animal = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext:managedContext)
        
        //3
        animal.setValue(name, forKey: "type")
        
        //4
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }  
        //5
        animals.append(animal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        let animal = animals[indexPath.row]

        cell.textLabel?.text = animal.valueForKey("type") as? String
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        println(animals[row])
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //1
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let fetchRequest = NSFetchRequest(entityName:"Animal")
        
        //3
        var error: NSError?
        
        let fetchedResults =
        managedContext.executeFetchRequest(fetchRequest,
            error: &error) as? [NSManagedObject]
        
        if let results = fetchedResults {
            animals = results
        } else {
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }
    
    


}

