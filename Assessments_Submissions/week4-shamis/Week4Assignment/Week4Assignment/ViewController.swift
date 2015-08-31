//
//  ViewController.swift
//  Week4Assignment
//
//  Created by Dmitry Shamis on 8/31/15.
//  Copyright (c) 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalView.delegate = self
        animalView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var animals = ["Tiger", "Bear", "Eagle"]
    
    let cellIdentifier = "animalName"

    @IBOutlet weak var animalView: AnimalTableView!

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = animalView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = animals[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        println(animals[row])
    }

    @IBOutlet weak var animalNameField: UITextField!
    
    @IBAction func addAnimalButton(sender: AnyObject) {
        if animalNameField.text != "" {
            
            let actionSheetController: UIAlertController = UIAlertController(title: "Animal Added", message: "You've added a(n) \(animalNameField.text.capitalizedString)!", preferredStyle: .ActionSheet)
            
            let dismissAction: UIAlertAction = UIAlertAction(title: "Cool dude!", style: .Cancel) { action -> Void in
                //Just dismiss the action sheet
            }
            actionSheetController.addAction(dismissAction)
            
            actionSheetController.popoverPresentationController?.sourceView = sender as! UIView;
            self.presentViewController(actionSheetController, animated: true, completion: nil)
        }
    }
    
}
