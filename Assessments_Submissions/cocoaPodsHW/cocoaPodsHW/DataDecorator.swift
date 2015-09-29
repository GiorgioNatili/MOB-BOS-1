//
//  DataDecorator.swift
//  cocoaPodsHW
//
//  Created by Marcy Regalado on 9/28/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import Foundation


protocol DataDecorator {
    func format(value:Joke) -> String //getting a value object for the class Joke
}