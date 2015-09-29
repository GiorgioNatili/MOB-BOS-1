//
//  RenderImage.swift
//  cocoaPodsHW
//
//  Created by Marcy Regalado on 9/28/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class RenderImage: NSObject {
    
    func renderPic (value: Joke, imageView: UIImageView) {
        
        let url:NSURL = NSURL(string: value.url)!
        let data:NSData = NSData(contentsOfURL: url)!
        
        imageView.image = UIImage(data: data)!
        
    }
    

}
