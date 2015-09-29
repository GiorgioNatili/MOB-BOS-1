//
//  JokeDecorator.swift
//  cocoaPodsHW
//
//  Created by Marcy Regalado on 9/28/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

//this class decorates the data for the viewController where the data is being presented

import UIKit
import Foundation

class JokeDecorator: NSObject, DataDecorator {
    
    private let greeting:String = "This one time, Chuck Norris said "
    
    func format(value: Joke) -> String {
        
        return "\(greeting) \(value.jokeString)"
    }

}
