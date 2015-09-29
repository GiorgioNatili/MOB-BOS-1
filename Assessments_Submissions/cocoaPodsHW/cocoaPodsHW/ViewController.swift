//
//  ViewController.swift
//  cocoaPodsHW
//
//  Created by Marcy Regalado on 9/28/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    // MARK: ui elements
    @IBOutlet var jokeContent: UILabel!
    @IBOutlet var chuckPic: UIImageView!
    var decorator = JokeDecorator()
    var renderImage = RenderImage()
    
    // MARK: viewLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "jokeReturned:", name: "JokeFetched", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: functions
    func jokeReturned(notification: NSNotification) {
        
        let joke: Joke = notification.object as! Joke
        
        jokeContent.text = self.decorator.format(joke)
        self.renderImage.renderPic(joke, imageView: chuckPic)
    }
    
    @IBAction func jokeGetter(sender: AnyObject) {
        
            let jokeProvider = JokeProvider(decorator: JokeDecorator())
            jokeProvider.fetchJoke()
        
    }
    
}

