//
//  JokeProvider.swift
//  cocoaPodsHW
//
//  Created by Marcy Regalado on 9/28/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

//this class provides the dynamic string

import Foundation
import UIKit
import Alamofire
import SwiftyJSON


class JokeProvider: NSObject {
    
    private var decorator:DataDecorator
    
    init (decorator:DataDecorator) {
        
        self.decorator = decorator
        
    }
    
    //this is saying that the is getting a decorator that follows a protocol
    //if the decorator wants to be changed it can be in it's own file.
    
    func fetchJoke()  {

        Alamofire.request(.GET, "http://api.icndb.com/jokes/random")
            .responseJSON {request, response, result in
                
                let jsonJoke = JSON(result.value!)
                
                var joke = Joke()
                joke.jokeString = String(jsonJoke["value"]["joke"])
                joke.url = "http://cdn.meme.am/instances/250x250/12087548.jpg"
                NSNotificationCenter.defaultCenter().postNotificationName("JokeFetched", object: joke)
                
                
        }
        
    }



}
